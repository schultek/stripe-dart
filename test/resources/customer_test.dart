import 'dart:io';

import 'package:http/http.dart' show Response;
import 'package:http/testing.dart';
import 'package:stripe/messages.dart';
import 'package:stripe/src/client.dart';
import 'package:stripe/src/resources/customer.dart';
import 'package:test/test.dart';

void main() {
  group('CustomerResource', () {
    test('properly decodes all values', () async {
      final request = CreateCustomerRequest(email: 'test@example.com', name: 'Tom');

      var client = Client.withClient(
        MockClient((request) async {
          expect(request.url, Uri.parse('https://api.stripe.com/v1/customers'));
          return Response(createCustomerResponse, HttpStatus.ok);
        }),
        apiKey: 'sk_foobar',
      );

      var customerResource = CustomerResource(client);

      final response = await customerResource.create(request);

      expect(response.id, 'cus_JC3alB0zcgmLbY');
      expect(response.email, 'foo@bar.com');
    });
  });
}

const createCustomerResponse = r'''
{
  "id": "cus_JC3alB0zcgmLbY",
  "object": "customer",
  "address": null,
  "balance": 0,
  "created": 1616864327,
  "currency": "eur",
  "default_source": null,
  "delinquent": false,
  "description": "My First Test Customer (created for API docs)",
  "discount": null,
  "email": "foo@bar.com",
  "invoice_prefix": "3831940",
  "invoice_settings": {
    "custom_fields": null,
    "default_payment_method": null,
    "footer": null
  },
  "livemode": false,
  "metadata": {},
  "name": null,
  "phone": null,
  "preferred_locales": [],
  "shipping": null,
  "tax_exempt": "none"
}
''';
