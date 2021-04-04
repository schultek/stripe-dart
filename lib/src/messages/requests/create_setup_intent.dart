part of messages;

/// https://stripe.com/docs/api/setup_intents/create
@jsonSerializable
class CreateSetupIntentRequest {
  /// Set to true to attempt to confirm this SetupIntent immediately.
  /// This parameter defaults to false. If the payment method attached is a
  /// card, a return_url may be provided in case additional authentication
  /// is required.
  final bool? confirm;

  /// ID of the Customer this SetupIntent belongs to, if one exists.
  /// If present, the SetupIntent’s payment method will be attached to the
  /// Customer on successful setup. Payment methods attached to other Customers
  /// cannot be used with this SetupIntent.
  final String? customer;

  CreateSetupIntentRequest({
    this.confirm,
    this.customer,
  });
}
