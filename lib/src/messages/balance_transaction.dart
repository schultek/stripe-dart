part of '../../messages.dart';

/// https://stripe.com/docs/api/balance_transactions/object
@jsonSerializable
class BalanceTransaction {
  final String id;
  final int amount;
  final int net;
  final String currency;
  BalanceTransaction({
    required this.id,
    required this.amount,
    required this.net,
    required this.currency,
  });
}
