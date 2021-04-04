library messages;

import 'package:dart_json_mapper/dart_json_mapper.dart';

import 'messages.mapper.g.dart' show initializeJsonMapper;

part 'src/messages/balance_transaction.dart';
part 'src/messages/charge.dart';
part 'src/messages/customer.dart';
part 'src/messages/data_list.dart';
part 'src/messages/payment_intent.dart';
part 'src/messages/price.dart';
part 'src/messages/refund.dart';
part 'src/messages/requests/create_customer.dart';
part 'src/messages/requests/create_refund.dart';
part 'src/messages/requests/create_session.dart';
part 'src/messages/requests/create_setup_intent.dart';
part 'src/messages/requests/list_subscription.dart';
part 'src/messages/session.dart';
part 'src/messages/setup_intent.dart';
part 'src/messages/subscription.dart';
part 'src/messages/subscription_item.dart';

/// used for json_mapper code generation
void main() {
  initJsonMapper();
}

bool isJsonInitialized = false;

void initJsonMapper() {
  if (isJsonInitialized) return;
  initializeJsonMapper(adapters: [
    JsonMapperAdapter(valueDecorators: {
      typeOf<int>(): (value) => value?.round(),
      typeOf<int?>(): (value) => value?.round(),
    })
  ]);
  isJsonInitialized = true;
}
