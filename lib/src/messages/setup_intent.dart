part of '../../messages.dart';

/// https://stripe.com/docs/api/payment_intents/object
@jsonSerializable
class SetupIntent {
  final String id;
  final String status;

  SetupIntent({
    required this.id,
    required this.status,
  });
}
