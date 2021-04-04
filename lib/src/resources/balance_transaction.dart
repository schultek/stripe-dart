import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';

class BalanceTransactionResource {
  final Client _client;
  BalanceTransactionResource(this._client);

  Future<BalanceTransaction> retrieve(String balanceTransactionId) async {
    return _client.get('balance_transactions/$balanceTransactionId');
  }
}
