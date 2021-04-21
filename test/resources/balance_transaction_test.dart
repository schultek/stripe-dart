import 'dart:io';

import 'package:http/http.dart' show Response;
import 'package:http/testing.dart';
import 'package:stripe/src/client.dart';
import 'package:stripe/src/resources/balance_transaction.dart';
import 'package:test/test.dart';

void main() {
  late Client client;
  late BalanceTransactionResource balanceTransactionResource;

  group('BalanceTransactionResource', () {
    test('properly decodes all values', () async {
      const id = 'pi_1EUqMaAA7oWz99nSFM4ANx6C';

      client = Client.withClient(
        MockClient((request) async {
          expect(request.url, Uri.parse('https://api.stripe.com/v1/balance_transactions/$id'));
          return Response(balanceTransactionResponse, HttpStatus.ok);
        }),
        apiKey: 'sk_foobar',
      );

      balanceTransactionResource = BalanceTransactionResource(client);

      final response = await balanceTransactionResource.retrieve(id);

      expect(response.id, 'txn_1IZI1WCQQp28cFsCCDFNDOhL');
      expect(response.amount, 1200);
      expect(response.net, 1140);
      expect(response.currency, 'eur');
    });
  });
}

const balanceTransactionResponse = r'''
{
  "id": "txn_1IZI1WCQQp28cFsCCDFNDOhL",
  "object": "balance_transaction",
  "amount": 1200,
  "available_on": 1617321600,
  "created": 1616774194,
  "currency": "eur",
  "description": "Subscription creation",
  "exchange_rate": null,
  "fee": 60,
  "fee_details": [
    {
      "amount": 60,
      "application": null,
      "currency": "eur",
      "description": "Stripe processing fees",
      "type": "stripe_fee"
    }
  ],
  "net": 1140,
  "reporting_category": "charge",
  "source": "ch_1IZI1WCQQp28cFsC3NZk4ERe",
  "status": "pending",
  "type": "charge"
}
''';
