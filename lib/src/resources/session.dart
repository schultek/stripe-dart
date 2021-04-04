import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';

class SessionResource {
  final Client _client;
  SessionResource(this._client);

  /// Creates a Stripe Checkout Session.
  Future<Session> create(CreateSessionRequest request) async {
    return _client.post('checkout/sessions', data: request);
  }

  Future<Session> retrieve(String id) async {
    return _client.get('checkout/sessions/$id');
  }
}
