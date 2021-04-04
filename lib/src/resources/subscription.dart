import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';

class SubscriptionResource {
  final Client _client;
  SubscriptionResource(this._client);

  Future<Subscription> get(String id) async {
    return _client.get('subscription/$id');
  }

  Future<DataList<Subscription>> list(ListSubscriptionRequest request) async {
    return _client.post('subscriptions', data: request);
  }
}
