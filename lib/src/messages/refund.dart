part of '../../messages.dart';

/// https://stripe.com/docs/api/refunds/object
@jsonSerializable
class Refund {
  final String id;
  Refund({
    required this.id,
  });
}
