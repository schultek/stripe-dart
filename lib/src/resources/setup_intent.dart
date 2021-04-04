import 'dart:async';

import 'package:logging/logging.dart';
import 'package:stripe/messages.dart';

import '../client.dart';

final log = Logger('Stripe SetupIntentResource');

class SetupIntentResource {
  final Client _client;
  SetupIntentResource(this._client);

  /// Creates a Stripe Setup Intent.
  Future<SetupIntent> create(CreateSetupIntentRequest request) async {
    return _client.post('setup_intents', data: request);
  }

  Future<SetupIntent> retrieve(String setupIntentId) async {
    return _client.get('setup_intents/$setupIntentId');
  }

  /// Returns true if successful.
  Future<bool> cancel(String setupIntentId) async {
    try {
      await _client.post('setup_intents/$setupIntentId/cancel');
    } catch (e) {
      log.warning(e);
      return false;
    }
    return true;
  }
}
