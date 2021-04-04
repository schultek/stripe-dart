part of '../../messages.dart';

/// https://stripe.com/docs/api/payment_intents/object
@jsonSerializable
class PaymentIntent {
  final String id;
  final String status;
  final DataList<Charge> charges;

  PaymentIntent({
    required this.id,
    required this.status,
    required this.charges,
  });
}
