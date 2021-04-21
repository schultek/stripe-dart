part of '../../messages.dart';

/// https://stripe.com/docs/api/setup_intents/object
class SetupIntent {
  final String id;
  final String status;
  final String clientSecret;

  SetupIntent({
    required this.id,
    required this.status,
    required this.clientSecret,
  });
}
