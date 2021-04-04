part of '../../messages.dart';

@jsonSerializable
enum PaymentMethodType {
  alipay,
  card,
  ideal,
  fpx,
  bacs_debit,
  bancontact,
  giropay,
  p24,
  eps,
  sofort,
  sepaDebit,
  grabpay,
  afterpay_clearpay,
}

/// https://stripe.com/docs/api/checkout/sessions/object
@jsonSerializable
@Json(caseStyle: CaseStyle.Snake)
class Session {
  final String id;
  final String? customer;
  final String? paymentIntent;
  final List<PaymentMethodType> paymentMethodTypes;

  Session({
    required this.id,
    required this.paymentMethodTypes,
    this.customer,
    this.paymentIntent,
  });
}
