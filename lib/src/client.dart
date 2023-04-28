import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:stripe/src/exceptions.dart';

import '../messages.dart';

const _defaultUrl = 'https://api.stripe.com/v1/';
const _defaultVersion = '2020-08-27';

/// The http client implementation that will make requests to the stripe API.
///
/// Internally this uses a http client.
class Client {
  final String version;
  final String apiKey;
  final String baseUrl;

  /// Creates a client that will make requests to [baseUrl].
  factory Client({
    required String apiKey,
    String baseUrl = _defaultUrl,
    String version = _defaultVersion,
  }) =>
      Client.withClient(http.Client(),
          baseUrl: baseUrl, version: version, apiKey: apiKey);

  @visibleForTesting
  Client.withClient(
    this.client, {
    required this.apiKey,
    this.baseUrl = _defaultUrl,
    this.version = _defaultVersion,
  });

  /// The actual [http.Client] instance that makes the request. You shouldn't need to
  /// access this.
  @visibleForTesting
  final http.Client client;

  /// Makes a post request to the Stripe API
  Future<T> post<T>(
    final String path, {
    final Object? data,
    final String? idempotencyKey,
  }) async {
    try {
      final response = await client.post(
        _createUri(path),
        body: fixMap(Mapper.toMap(data)),
        headers: _createHeaders(idempotencyKey: idempotencyKey),
      );
      return _processResponse<T>(response);
    } on HttpException catch (e) {
      var message = e.message;
      throw InvalidRequestException(message);
    }
  }

  /// Makes a get request to the Stripe API
  Future<T> get<T>(
    final String path, {
    Map<String, dynamic>? params,
    String? idempotencyKey,
  }) async {
    var uri = _createUri(path, params: params);
    print("URI IS $uri");
    var headers = _createHeaders(idempotencyKey: idempotencyKey);
    print("HEADERS IS $headers");
    final response = await client.get(
      uri,
      headers: headers,
    );
    print("RESPONSE IS $response");

    return _processResponse<T>(response);
  }

  Uri _createUri(String path, {Map<String, dynamic>? params}) {
    var url = baseUrl + path;
    if (params != null && params.isNotEmpty) {
      url += '?' + params.entries.map((e) => '${e.key}=${e.value}').join('&');
    }
    return Uri.parse(url);
  }

  Map<String, String> _createHeaders({String? idempotencyKey}) => {
        if (idempotencyKey != null) 'Idempotency-Key': idempotencyKey,
        HttpHeaders.authorizationHeader:
            'Basic ${base64Encode(utf8.encode('$apiKey:'))}',
        'Stripe-Version': version,
        HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
      };

  T _processResponse<T>(http.Response response) {
    final responseStatusCode = response.statusCode;

    print("STATUS IS $responseStatusCode");
    if (responseStatusCode != 200) {
      var data = jsonDecode(response.body);

      print("DATAA IS $data");
      if (data == null || data['error'] == null) {
        throw InvalidRequestException(
            'The status code returned was $responseStatusCode but no error was provided.');
      }
      final error = data['error'] as Map;
      switch (error['type'].toString()) {
        case 'invalid_request_error':
          throw InvalidRequestException(error['message'].toString());
        default:
          throw UnknownTypeException(
              'The status code returned was $responseStatusCode but the error type is unknown.');
      }
    }

    var data = Mapper.fromJson<T>(response.body);
    if (data == null) {
      throw InvalidRequestException(
          'The JSON returned was unparsable (${response.body}).');
    }
    return data;
  }
}

/// This converter is used to convert [List] objects to [Map] so they
/// are encoded properly for Stripe.
///
/// Stripe expects array to be submited like this: `some_field[0]=value` and not
/// `some_field=[value]`.
Map<String, String>? fixMap(Map? object) {
  if (object == null) {
    return null;
  }
  var map = <String, String>{};
  for (final key in object.keys) {
    var value = object[key];

    if (value is List) {
      value = Map.fromIterables(
          List.generate(value.length, (index) => '$index'), value);
    }

    if (value is Map<String, dynamic>) {
      value = fixMap(value);
      for (String subkey in value.keys) {
        var i = subkey.indexOf('[');
        var key2 = i >= 0
            ? '[${subkey.substring(0, i)}]${subkey.substring(i)}'
            : '[$subkey]';
        map['$key$key2'] = value[subkey].toString();
      }
    } else {
      map[key] = value.toString();
    }
  }
  return map;
}
