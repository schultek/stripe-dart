part of '../../messages.dart';

enum PriceType { one_time, recurring }

/// https://stripe.com/docs/api/charges/object
class Price {
  /// Unique identifier for the object.
  final String id;

  /// Whether the price can be used for new purchases.
  final bool active;

  /// Three-letter ISO currency code, in lowercase. Must be a supported
  /// currency.
  final String currency;

  /// The ID of the product this price is associated with.
  final String product;

  /// One of one_time or recurring depending on whether the price is for a
  /// one-time purchase or a recurring (subscription) purchase.
  final PriceType type;

  /// The unit amount in cents to be charged, represented as a whole integer if
  /// possible. Only set if billing_scheme=per_unit.
  final int unitAmount;

  Price({
    required this.id,
    required this.active,
    required this.currency,
    required this.product,
    required this.type,
    required this.unitAmount,
  });
}
