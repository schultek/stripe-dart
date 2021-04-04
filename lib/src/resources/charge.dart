import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';

class ChargeResource {
  final Client _client;
  ChargeResource(this._client);

  Future<Charge> retrieve(String chargeId) async {
    return _client.get('charges/$chargeId');
  }
}
