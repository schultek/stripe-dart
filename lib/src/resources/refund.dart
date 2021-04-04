import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';

class RefundResource {
  final Client _client;
  RefundResource(this._client);

  Future<Refund> create(CreateRefundRequest request) async {
    return _client.post('refunds', data: request);
  }
}
