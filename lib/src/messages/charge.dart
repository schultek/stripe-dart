part of '../../messages.dart';

/// https://stripe.com/docs/api/charges/object
@jsonSerializable
@Json(caseStyle: CaseStyle.Snake)
class Charge {
  final String id;
  final String balanceTransaction;
  final PaymentMethodDetails paymentMethodDetails;
  final bool livemode;

  Charge({
    required this.id,
    required this.balanceTransaction,
    required this.paymentMethodDetails,
    required this.livemode,
  });
}

@jsonSerializable
class PaymentMethodDetails {
  final PaymentMethodDetailsCard? card;

  PaymentMethodDetails({
    this.card,
  });
}

@jsonSerializable
class PaymentMethodDetailsCard {
  final String brand;
  final String last4;
  PaymentMethodDetailsCard({
    required this.brand,
    required this.last4,
  });
}
