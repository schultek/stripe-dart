part of '../../messages.dart';

/// https://stripe.com/docs/api/charges/object
@jsonSerializable
class SubscriptionItem {
  /// Unique identifier for the object.
  final String id;

  /// The price the customer is subscribed to.
  final Price price;

  /// The subscription this subscription_item belongs to.
  final String subscription;

  SubscriptionItem({
    required this.id,
    required this.price,
    required this.subscription,
  });
}
