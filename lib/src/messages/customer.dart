part of '../../messages.dart';

/// https://stripe.com/docs/api/charges/object
@jsonSerializable
class Customer {
  /// Unique identifier for the object.
  final String id;

  /// An arbitrary string attached to the object. Often useful for displaying to
  /// users.
  final String? description;

  /// The customer’s email address.
  final String? email;

  /// Set of key-value pairs that you can attach to an object. This can be
  /// useful for storing additional information about the object in a structured
  /// format.
  final Map<String, dynamic>? metadata;

  /// The customer’s full name or business name.
  final String? name;

  Customer({
    required this.id,
    this.description,
    this.email,
    this.metadata,
    this.name,
  });
}
