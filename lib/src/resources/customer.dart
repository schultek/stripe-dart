import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';

class CustomerResource {
  final Client _client;
  CustomerResource(this._client);

  Future<Customer> create(CreateCustomerRequest request) async {
    return _client.post('customers', data: request);
  }

  Future<Customer> retrieve(String customerId) async {
    return _client.get('customers/$customerId');
  }

  Future<DataList<Customer>> list({String? email}) async {
    return _client.get('customers', params: {
      if (email != null) 'email': email,
    });
  }
}
