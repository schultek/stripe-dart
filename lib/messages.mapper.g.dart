// ignore_for_file: unnecessary_cast, prefer_relative_imports, unused_element
import 'dart:convert';

import 'package:stripe/messages.dart';

// === GENERATED MAPPER CLASSES AND EXTENSIONS ===

class BalanceTransactionMapper implements Mapper<BalanceTransaction> {
  BalanceTransactionMapper._();

  BalanceTransaction fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  BalanceTransaction fromMap(Map<String, dynamic> map) => BalanceTransaction(
      id: map.get('id'),
      amount: map.get('amount'),
      net: map.get('net'),
      currency: map.get('currency'));

  @override
  Map<String, dynamic> encode(BalanceTransaction b) =>
      {'id': b.id, 'amount': b.amount, 'net': b.net, 'currency': b.currency};
  @override
  String stringify(BalanceTransaction self) =>
      'BalanceTransaction(id: ${self.id}, amount: ${self.amount}, net: ${self.net}, currency: ${self.currency})';
  @override
  int hash(BalanceTransaction self) =>
      self.id.hashCode ^
      self.amount.hashCode ^
      self.net.hashCode ^
      self.currency.hashCode;
  @override
  bool equals(BalanceTransaction self, BalanceTransaction other) =>
      self.id == other.id &&
      self.amount == other.amount &&
      self.net == other.net &&
      self.currency == other.currency;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<BalanceTransaction>();
}

extension BalanceTransactionExtension on BalanceTransaction {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  BalanceTransaction copyWith(
          {String? id, int? amount, int? net, String? currency}) =>
      BalanceTransaction(
          id: id ?? this.id,
          amount: amount ?? this.amount,
          net: net ?? this.net,
          currency: currency ?? this.currency);
}

class ChargeMapper implements Mapper<Charge> {
  ChargeMapper._();

  Charge fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  Charge fromMap(Map<String, dynamic> map) => Charge(
      id: map.get('id'),
      balanceTransaction: map.get('balance_transaction'),
      paymentMethodDetails: map.get('payment_method_details'),
      livemode: map.get('livemode'));

  @override
  Map<String, dynamic> encode(Charge c) => {
        'id': c.id,
        'balance_transaction': c.balanceTransaction,
        'payment_method_details': c.paymentMethodDetails.toMap(),
        'livemode': c.livemode
      };
  @override
  String stringify(Charge self) =>
      'Charge(id: ${self.id}, balanceTransaction: ${self.balanceTransaction}, paymentMethodDetails: ${self.paymentMethodDetails}, livemode: ${self.livemode})';
  @override
  int hash(Charge self) =>
      self.id.hashCode ^
      self.balanceTransaction.hashCode ^
      self.paymentMethodDetails.hashCode ^
      self.livemode.hashCode;
  @override
  bool equals(Charge self, Charge other) =>
      self.id == other.id &&
      self.balanceTransaction == other.balanceTransaction &&
      self.paymentMethodDetails == other.paymentMethodDetails &&
      self.livemode == other.livemode;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<Charge>();
}

extension ChargeExtension on Charge {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  Charge copyWith(
          {String? id,
          String? balanceTransaction,
          PaymentMethodDetails? paymentMethodDetails,
          bool? livemode}) =>
      Charge(
          id: id ?? this.id,
          balanceTransaction: balanceTransaction ?? this.balanceTransaction,
          paymentMethodDetails:
              paymentMethodDetails ?? this.paymentMethodDetails,
          livemode: livemode ?? this.livemode);
}

class PaymentMethodDetailsMapper implements Mapper<PaymentMethodDetails> {
  PaymentMethodDetailsMapper._();

  PaymentMethodDetails fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  PaymentMethodDetails fromMap(Map<String, dynamic> map) =>
      PaymentMethodDetails(card: map.getOpt('card'));

  @override
  Map<String, dynamic> encode(PaymentMethodDetails p) =>
      {if (p.card?.toMap() != null) 'card': p.card?.toMap()};
  @override
  String stringify(PaymentMethodDetails self) =>
      'PaymentMethodDetails(card: ${self.card})';
  @override
  int hash(PaymentMethodDetails self) => self.card.hashCode;
  @override
  bool equals(PaymentMethodDetails self, PaymentMethodDetails other) =>
      self.card == other.card;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<PaymentMethodDetails>();
}

extension PaymentMethodDetailsExtension on PaymentMethodDetails {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  PaymentMethodDetails copyWith({PaymentMethodDetailsCard? card}) =>
      PaymentMethodDetails(card: card ?? this.card);
}

class PaymentMethodDetailsCardMapper
    implements Mapper<PaymentMethodDetailsCard> {
  PaymentMethodDetailsCardMapper._();

  PaymentMethodDetailsCard fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  PaymentMethodDetailsCard fromMap(Map<String, dynamic> map) =>
      PaymentMethodDetailsCard(
          brand: map.get('brand'), last4: map.get('last4'));

  @override
  Map<String, dynamic> encode(PaymentMethodDetailsCard p) =>
      {'brand': p.brand, 'last4': p.last4};
  @override
  String stringify(PaymentMethodDetailsCard self) =>
      'PaymentMethodDetailsCard(brand: ${self.brand}, last4: ${self.last4})';
  @override
  int hash(PaymentMethodDetailsCard self) =>
      self.brand.hashCode ^ self.last4.hashCode;
  @override
  bool equals(PaymentMethodDetailsCard self, PaymentMethodDetailsCard other) =>
      self.brand == other.brand && self.last4 == other.last4;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<PaymentMethodDetailsCard>();
}

extension PaymentMethodDetailsCardExtension on PaymentMethodDetailsCard {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  PaymentMethodDetailsCard copyWith({String? brand, String? last4}) =>
      PaymentMethodDetailsCard(
          brand: brand ?? this.brand, last4: last4 ?? this.last4);
}

class CustomerMapper implements Mapper<Customer> {
  CustomerMapper._();

  Customer fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  Customer fromMap(Map<String, dynamic> map) => Customer(
      id: map.get('id'),
      description: map.getOpt('description'),
      email: map.getOpt('email'),
      metadata: map.getMapOpt('metadata'),
      name: map.getOpt('name'));

  @override
  Map<String, dynamic> encode(Customer c) => {
        'id': c.id,
        if (c.description != null) 'description': c.description,
        if (c.email != null) 'email': c.email,
        if (c.metadata != null) 'metadata': c.metadata,
        if (c.name != null) 'name': c.name
      };
  @override
  String stringify(Customer self) =>
      'Customer(id: ${self.id}, description: ${self.description}, email: ${self.email}, metadata: ${self.metadata}, name: ${self.name})';
  @override
  int hash(Customer self) =>
      self.id.hashCode ^
      self.description.hashCode ^
      self.email.hashCode ^
      self.metadata.hashCode ^
      self.name.hashCode;
  @override
  bool equals(Customer self, Customer other) =>
      self.id == other.id &&
      self.description == other.description &&
      self.email == other.email &&
      self.metadata == other.metadata &&
      self.name == other.name;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<Customer>();
}

extension CustomerExtension on Customer {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  Customer copyWith(
          {String? id,
          String? description,
          String? email,
          Map<String, dynamic>? metadata,
          String? name}) =>
      Customer(
          id: id ?? this.id,
          description: description ?? this.description,
          email: email ?? this.email,
          metadata: metadata ?? this.metadata,
          name: name ?? this.name);
}

class DataListMapper implements Mapper<DataList> {
  DataListMapper._();

  DataList<T> fromValue<T>(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap<T>(map));
  DataList<T> fromMap<T>(Map<String, dynamic> map) => DataList(
      data: map.getList('data'),
      hasMore: map.get('has_more'),
      url: map.get('url'));

  @override
  Map<String, dynamic> encode(DataList d) => {
        'data': d.data.map((d) => Mapper.toValue(d)).toList(),
        'has_more': d.hasMore,
        'url': d.url
      };
  @override
  String stringify(DataList self) =>
      'DataList(data: ${self.data}, hasMore: ${self.hasMore}, url: ${self.url})';
  @override
  int hash(DataList self) =>
      self.data.hashCode ^ self.hasMore.hashCode ^ self.url.hashCode;
  @override
  bool equals(DataList self, DataList other) =>
      self.data == other.data &&
      self.hasMore == other.hasMore &&
      self.url == other.url;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => <T>(f) => f<DataList<T>>();
}

extension DataListExtension<T> on DataList<T> {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  DataList<T> copyWith({List<T>? data, bool? hasMore, String? url}) => DataList(
      data: data ?? this.data,
      hasMore: hasMore ?? this.hasMore,
      url: url ?? this.url);
}

class PaymentIntentMapper implements Mapper<PaymentIntent> {
  PaymentIntentMapper._();

  PaymentIntent fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  PaymentIntent fromMap(Map<String, dynamic> map) => PaymentIntent(
      id: map.get('id'),
      status: map.get('status'),
      charges: map.get('charges'));

  @override
  Map<String, dynamic> encode(PaymentIntent p) =>
      {'id': p.id, 'status': p.status, 'charges': p.charges.toMap()};
  @override
  String stringify(PaymentIntent self) =>
      'PaymentIntent(id: ${self.id}, status: ${self.status}, charges: ${self.charges})';
  @override
  int hash(PaymentIntent self) =>
      self.id.hashCode ^ self.status.hashCode ^ self.charges.hashCode;
  @override
  bool equals(PaymentIntent self, PaymentIntent other) =>
      self.id == other.id &&
      self.status == other.status &&
      self.charges == other.charges;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<PaymentIntent>();
}

extension PaymentIntentExtension on PaymentIntent {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  PaymentIntent copyWith(
          {String? id, String? status, DataList<Charge>? charges}) =>
      PaymentIntent(
          id: id ?? this.id,
          status: status ?? this.status,
          charges: charges ?? this.charges);
}

class PriceMapper implements Mapper<Price> {
  PriceMapper._();

  Price fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  Price fromMap(Map<String, dynamic> map) => Price(
      id: map.get('id'),
      active: map.get('active'),
      currency: map.get('currency'),
      product: map.get('product'),
      type: map.get('type'),
      unitAmount: map.get('unit_amount'));

  @override
  Map<String, dynamic> encode(Price p) => {
        'id': p.id,
        'active': p.active,
        'currency': p.currency,
        'product': p.product,
        'type': p.type.toStringValue(),
        'unit_amount': p.unitAmount
      };
  @override
  String stringify(Price self) =>
      'Price(id: ${self.id}, active: ${self.active}, currency: ${self.currency}, product: ${self.product}, type: ${self.type}, unitAmount: ${self.unitAmount})';
  @override
  int hash(Price self) =>
      self.id.hashCode ^
      self.active.hashCode ^
      self.currency.hashCode ^
      self.product.hashCode ^
      self.type.hashCode ^
      self.unitAmount.hashCode;
  @override
  bool equals(Price self, Price other) =>
      self.id == other.id &&
      self.active == other.active &&
      self.currency == other.currency &&
      self.product == other.product &&
      self.type == other.type &&
      self.unitAmount == other.unitAmount;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<Price>();
}

extension PriceExtension on Price {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  Price copyWith(
          {String? id,
          bool? active,
          String? currency,
          String? product,
          PriceType? type,
          int? unitAmount}) =>
      Price(
          id: id ?? this.id,
          active: active ?? this.active,
          currency: currency ?? this.currency,
          product: product ?? this.product,
          type: type ?? this.type,
          unitAmount: unitAmount ?? this.unitAmount);
}

class RefundMapper implements Mapper<Refund> {
  RefundMapper._();

  Refund fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  Refund fromMap(Map<String, dynamic> map) => Refund(id: map.get('id'));

  @override
  Map<String, dynamic> encode(Refund r) => {'id': r.id};
  @override
  String stringify(Refund self) => 'Refund(id: ${self.id})';
  @override
  int hash(Refund self) => self.id.hashCode;
  @override
  bool equals(Refund self, Refund other) => self.id == other.id;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<Refund>();
}

extension RefundExtension on Refund {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  Refund copyWith({String? id}) => Refund(id: id ?? this.id);
}

class CreateCustomerRequestMapper implements Mapper<CreateCustomerRequest> {
  CreateCustomerRequestMapper._();

  CreateCustomerRequest fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  CreateCustomerRequest fromMap(Map<String, dynamic> map) =>
      CreateCustomerRequest(
          description: map.getOpt('description'),
          email: map.getOpt('email'),
          metadata: map.getMapOpt('metadata'),
          name: map.getOpt('name'),
          paymentMethod: map.getOpt('payment_method'),
          phone: map.getOpt('phone'));

  @override
  Map<String, dynamic> encode(CreateCustomerRequest c) => {
        if (c.description != null) 'description': c.description,
        if (c.email != null) 'email': c.email,
        if (c.metadata != null) 'metadata': c.metadata,
        if (c.name != null) 'name': c.name,
        if (c.paymentMethod != null) 'payment_method': c.paymentMethod,
        if (c.phone != null) 'phone': c.phone
      };
  @override
  String stringify(CreateCustomerRequest self) =>
      'CreateCustomerRequest(description: ${self.description}, email: ${self.email}, metadata: ${self.metadata}, name: ${self.name}, paymentMethod: ${self.paymentMethod}, phone: ${self.phone})';
  @override
  int hash(CreateCustomerRequest self) =>
      self.description.hashCode ^
      self.email.hashCode ^
      self.metadata.hashCode ^
      self.name.hashCode ^
      self.paymentMethod.hashCode ^
      self.phone.hashCode;
  @override
  bool equals(CreateCustomerRequest self, CreateCustomerRequest other) =>
      self.description == other.description &&
      self.email == other.email &&
      self.metadata == other.metadata &&
      self.name == other.name &&
      self.paymentMethod == other.paymentMethod &&
      self.phone == other.phone;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<CreateCustomerRequest>();
}

extension CreateCustomerRequestExtension on CreateCustomerRequest {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  CreateCustomerRequest copyWith(
          {String? description,
          String? email,
          Map<String, String>? metadata,
          String? name,
          String? paymentMethod,
          String? phone}) =>
      CreateCustomerRequest(
          description: description ?? this.description,
          email: email ?? this.email,
          metadata: metadata ?? this.metadata,
          name: name ?? this.name,
          paymentMethod: paymentMethod ?? this.paymentMethod,
          phone: phone ?? this.phone);
}

class CreateRefundRequestMapper implements Mapper<CreateRefundRequest> {
  CreateRefundRequestMapper._();

  CreateRefundRequest fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  CreateRefundRequest fromMap(Map<String, dynamic> map) => CreateRefundRequest(
      charge: map.getOpt('charge'),
      amount: map.getOpt('amount'),
      paymentIntent: map.getOpt('payment_intent'),
      reason: map.getOpt('reason'));

  @override
  Map<String, dynamic> encode(CreateRefundRequest c) => {
        if (c.charge != null) 'charge': c.charge,
        if (c.amount != null) 'amount': c.amount,
        if (c.paymentIntent != null) 'payment_intent': c.paymentIntent,
        if (c.reason != null) 'reason': c.reason
      };
  @override
  String stringify(CreateRefundRequest self) =>
      'CreateRefundRequest(charge: ${self.charge}, amount: ${self.amount}, paymentIntent: ${self.paymentIntent}, reason: ${self.reason})';
  @override
  int hash(CreateRefundRequest self) =>
      self.charge.hashCode ^
      self.amount.hashCode ^
      self.paymentIntent.hashCode ^
      self.reason.hashCode;
  @override
  bool equals(CreateRefundRequest self, CreateRefundRequest other) =>
      self.charge == other.charge &&
      self.amount == other.amount &&
      self.paymentIntent == other.paymentIntent &&
      self.reason == other.reason;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<CreateRefundRequest>();
}

extension CreateRefundRequestExtension on CreateRefundRequest {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  CreateRefundRequest copyWith(
          {String? charge,
          int? amount,
          String? paymentIntent,
          String? reason}) =>
      CreateRefundRequest(
          charge: charge ?? this.charge,
          amount: amount ?? this.amount,
          paymentIntent: paymentIntent ?? this.paymentIntent,
          reason: reason ?? this.reason);
}

class CreateSessionRequestMapper implements Mapper<CreateSessionRequest> {
  CreateSessionRequestMapper._();

  CreateSessionRequest fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  CreateSessionRequest fromMap(Map<String, dynamic> map) =>
      CreateSessionRequest(
          successUrl: map.get('success_url'),
          cancelUrl: map.get('cancel_url'),
          paymentMethodTypes: map.getList('payment_method_types'),
          mode: map.getOpt('mode'),
          customerEmail: map.getOpt('customer_email'),
          customer: map.getOpt('customer'),
          lineItems: map.getListOpt('line_items'));

  @override
  Map<String, dynamic> encode(CreateSessionRequest c) => {
        'success_url': c.successUrl,
        'cancel_url': c.cancelUrl,
        'payment_method_types':
            c.paymentMethodTypes.map((c) => c.toStringValue()).toList(),
        if (c.mode?.toStringValue() != null) 'mode': c.mode?.toStringValue(),
        if (c.customerEmail != null) 'customer_email': c.customerEmail,
        if (c.customer != null) 'customer': c.customer,
        if (c.lineItems?.map((c) => c.toMap()).toList() != null)
          'line_items': c.lineItems?.map((c) => c.toMap()).toList()
      };
  @override
  String stringify(CreateSessionRequest self) =>
      'CreateSessionRequest(successUrl: ${self.successUrl}, cancelUrl: ${self.cancelUrl}, mode: ${self.mode}, paymentMethodTypes: ${self.paymentMethodTypes}, customerEmail: ${self.customerEmail}, customer: ${self.customer}, lineItems: ${self.lineItems})';
  @override
  int hash(CreateSessionRequest self) =>
      self.successUrl.hashCode ^
      self.cancelUrl.hashCode ^
      self.paymentMethodTypes.hashCode ^
      self.mode.hashCode ^
      self.customerEmail.hashCode ^
      self.customer.hashCode ^
      self.lineItems.hashCode;
  @override
  bool equals(CreateSessionRequest self, CreateSessionRequest other) =>
      self.successUrl == other.successUrl &&
      self.cancelUrl == other.cancelUrl &&
      self.paymentMethodTypes == other.paymentMethodTypes &&
      self.mode == other.mode &&
      self.customerEmail == other.customerEmail &&
      self.customer == other.customer &&
      self.lineItems == other.lineItems;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<CreateSessionRequest>();
}

extension CreateSessionRequestExtension on CreateSessionRequest {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  CreateSessionRequest copyWith(
          {String? successUrl,
          String? cancelUrl,
          List<PaymentMethodType>? paymentMethodTypes,
          SessionMode? mode,
          String? customerEmail,
          String? customer,
          List<LineItem>? lineItems}) =>
      CreateSessionRequest(
          successUrl: successUrl ?? this.successUrl,
          cancelUrl: cancelUrl ?? this.cancelUrl,
          paymentMethodTypes: paymentMethodTypes ?? this.paymentMethodTypes,
          mode: mode ?? this.mode,
          customerEmail: customerEmail ?? this.customerEmail,
          customer: customer ?? this.customer,
          lineItems: lineItems ?? this.lineItems);
}

class LineItemMapper implements Mapper<LineItem> {
  LineItemMapper._();

  LineItem fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  LineItem fromMap(Map<String, dynamic> map) => LineItem(
      images: map.getListOpt('images'),
      quantity: map.getOpt('quantity'),
      description: map.getOpt('description'),
      price: map.getOpt('price'));

  @override
  Map<String, dynamic> encode(LineItem l) => {
        if (l.images != null) 'images': l.images,
        if (l.quantity != null) 'quantity': l.quantity,
        if (l.description != null) 'description': l.description,
        if (l.price != null) 'price': l.price
      };
  @override
  String stringify(LineItem self) =>
      'LineItem(images: ${self.images}, quantity: ${self.quantity}, description: ${self.description}, price: ${self.price})';
  @override
  int hash(LineItem self) =>
      self.images.hashCode ^
      self.quantity.hashCode ^
      self.description.hashCode ^
      self.price.hashCode;
  @override
  bool equals(LineItem self, LineItem other) =>
      self.images == other.images &&
      self.quantity == other.quantity &&
      self.description == other.description &&
      self.price == other.price;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<LineItem>();
}

extension LineItemExtension on LineItem {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  LineItem copyWith(
          {List<String>? images,
          int? quantity,
          String? description,
          String? price}) =>
      LineItem(
          images: images ?? this.images,
          quantity: quantity ?? this.quantity,
          description: description ?? this.description,
          price: price ?? this.price);
}

class CreateSetupIntentRequestMapper
    implements Mapper<CreateSetupIntentRequest> {
  CreateSetupIntentRequestMapper._();

  CreateSetupIntentRequest fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  CreateSetupIntentRequest fromMap(Map<String, dynamic> map) =>
      CreateSetupIntentRequest(
          confirm: map.getOpt('confirm'), customer: map.getOpt('customer'));

  @override
  Map<String, dynamic> encode(CreateSetupIntentRequest c) => {
        if (c.confirm != null) 'confirm': c.confirm,
        if (c.customer != null) 'customer': c.customer
      };
  @override
  String stringify(CreateSetupIntentRequest self) =>
      'CreateSetupIntentRequest(confirm: ${self.confirm}, customer: ${self.customer})';
  @override
  int hash(CreateSetupIntentRequest self) =>
      self.confirm.hashCode ^ self.customer.hashCode;
  @override
  bool equals(CreateSetupIntentRequest self, CreateSetupIntentRequest other) =>
      self.confirm == other.confirm && self.customer == other.customer;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<CreateSetupIntentRequest>();
}

extension CreateSetupIntentRequestExtension on CreateSetupIntentRequest {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  CreateSetupIntentRequest copyWith({bool? confirm, String? customer}) =>
      CreateSetupIntentRequest(
          confirm: confirm ?? this.confirm,
          customer: customer ?? this.customer);
}

class ListSubscriptionRequestMapper implements Mapper<ListSubscriptionRequest> {
  ListSubscriptionRequestMapper._();

  ListSubscriptionRequest fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  ListSubscriptionRequest fromMap(Map<String, dynamic> map) =>
      ListSubscriptionRequest(
          customer: map.getOpt('customer'),
          price: map.getOpt('price'),
          status: map.getOpt('status'));

  @override
  Map<String, dynamic> encode(ListSubscriptionRequest l) => {
        if (l.customer != null) 'customer': l.customer,
        if (l.price != null) 'price': l.price,
        if (l.status?.toStringValue() != null)
          'status': l.status?.toStringValue()
      };
  @override
  String stringify(ListSubscriptionRequest self) =>
      'ListSubscriptionRequest(customer: ${self.customer}, price: ${self.price}, status: ${self.status})';
  @override
  int hash(ListSubscriptionRequest self) =>
      self.customer.hashCode ^ self.price.hashCode ^ self.status.hashCode;
  @override
  bool equals(ListSubscriptionRequest self, ListSubscriptionRequest other) =>
      self.customer == other.customer &&
      self.price == other.price &&
      self.status == other.status;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<ListSubscriptionRequest>();
}

extension ListSubscriptionRequestExtension on ListSubscriptionRequest {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  ListSubscriptionRequest copyWith(
          {String? customer, String? price, SubscriptionStatus? status}) =>
      ListSubscriptionRequest(
          customer: customer ?? this.customer,
          price: price ?? this.price,
          status: status ?? this.status);
}

class SessionMapper implements Mapper<Session> {
  SessionMapper._();

  Session fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  Session fromMap(Map<String, dynamic> map) => Session(
      id: map.get('id'),
      paymentMethodTypes: map.getList('payment_method_types'),
      customer: map.getOpt('customer'),
      paymentIntent: map.getOpt('payment_intent'));

  @override
  Map<String, dynamic> encode(Session s) => {
        'id': s.id,
        'payment_method_types':
            s.paymentMethodTypes.map((s) => s.toStringValue()).toList(),
        if (s.customer != null) 'customer': s.customer,
        if (s.paymentIntent != null) 'payment_intent': s.paymentIntent
      };
  @override
  String stringify(Session self) =>
      'Session(id: ${self.id}, customer: ${self.customer}, paymentIntent: ${self.paymentIntent}, paymentMethodTypes: ${self.paymentMethodTypes})';
  @override
  int hash(Session self) =>
      self.id.hashCode ^
      self.paymentMethodTypes.hashCode ^
      self.customer.hashCode ^
      self.paymentIntent.hashCode;
  @override
  bool equals(Session self, Session other) =>
      self.id == other.id &&
      self.paymentMethodTypes == other.paymentMethodTypes &&
      self.customer == other.customer &&
      self.paymentIntent == other.paymentIntent;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<Session>();
}

extension SessionExtension on Session {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  Session copyWith(
          {String? id,
          List<PaymentMethodType>? paymentMethodTypes,
          String? customer,
          String? paymentIntent}) =>
      Session(
          id: id ?? this.id,
          paymentMethodTypes: paymentMethodTypes ?? this.paymentMethodTypes,
          customer: customer ?? this.customer,
          paymentIntent: paymentIntent ?? this.paymentIntent);
}

class SetupIntentMapper implements Mapper<SetupIntent> {
  SetupIntentMapper._();

  SetupIntent fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  SetupIntent fromMap(Map<String, dynamic> map) => SetupIntent(
      id: map.get('id'),
      status: map.get('status'),
      clientSecret: map.get('client_secret'));

  @override
  Map<String, dynamic> encode(SetupIntent s) =>
      {'id': s.id, 'status': s.status, 'client_secret': s.clientSecret};
  @override
  String stringify(SetupIntent self) =>
      'SetupIntent(id: ${self.id}, status: ${self.status}, clientSecret: ${self.clientSecret})';
  @override
  int hash(SetupIntent self) =>
      self.id.hashCode ^ self.status.hashCode ^ self.clientSecret.hashCode;
  @override
  bool equals(SetupIntent self, SetupIntent other) =>
      self.id == other.id &&
      self.status == other.status &&
      self.clientSecret == other.clientSecret;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<SetupIntent>();
}

extension SetupIntentExtension on SetupIntent {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  SetupIntent copyWith({String? id, String? status, String? clientSecret}) =>
      SetupIntent(
          id: id ?? this.id,
          status: status ?? this.status,
          clientSecret: clientSecret ?? this.clientSecret);
}

class SubscriptionMapper implements Mapper<Subscription> {
  SubscriptionMapper._();

  Subscription fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  Subscription fromMap(Map<String, dynamic> map) => Subscription(
      id: map.get('id'),
      created: map.get('created'),
      customer: map.get('customer'),
      status: map.get('status'),
      items: map.get('items'));

  @override
  Map<String, dynamic> encode(Subscription s) => {
        'id': s.id,
        'created': s.created,
        'customer': s.customer,
        'status': s.status.toStringValue(),
        'items': s.items.toMap()
      };
  @override
  String stringify(Subscription self) =>
      'Subscription(id: ${self.id}, created: ${self.created}, customer: ${self.customer}, status: ${self.status}, items: ${self.items})';
  @override
  int hash(Subscription self) =>
      self.id.hashCode ^
      self.created.hashCode ^
      self.customer.hashCode ^
      self.status.hashCode ^
      self.items.hashCode;
  @override
  bool equals(Subscription self, Subscription other) =>
      self.id == other.id &&
      self.created == other.created &&
      self.customer == other.customer &&
      self.status == other.status &&
      self.items == other.items;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<Subscription>();
}

extension SubscriptionExtension on Subscription {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  Subscription copyWith(
          {String? id,
          int? created,
          String? customer,
          SubscriptionStatus? status,
          DataList<SubscriptionItem>? items}) =>
      Subscription(
          id: id ?? this.id,
          created: created ?? this.created,
          customer: customer ?? this.customer,
          status: status ?? this.status,
          items: items ?? this.items);
}

class SubscriptionItemMapper implements Mapper<SubscriptionItem> {
  SubscriptionItemMapper._();

  SubscriptionItem fromValue(dynamic v) =>
      checked(v, (Map<String, dynamic> map) => fromMap(map));
  SubscriptionItem fromMap(Map<String, dynamic> map) => SubscriptionItem(
      id: map.get('id'),
      price: map.get('price'),
      subscription: map.get('subscription'));

  @override
  Map<String, dynamic> encode(SubscriptionItem s) =>
      {'id': s.id, 'price': s.price.toMap(), 'subscription': s.subscription};
  @override
  String stringify(SubscriptionItem self) =>
      'SubscriptionItem(id: ${self.id}, price: ${self.price}, subscription: ${self.subscription})';
  @override
  int hash(SubscriptionItem self) =>
      self.id.hashCode ^ self.price.hashCode ^ self.subscription.hashCode;
  @override
  bool equals(SubscriptionItem self, SubscriptionItem other) =>
      self.id == other.id &&
      self.price == other.price &&
      self.subscription == other.subscription;

  @override
  Function get decoder => fromValue;
  @override
  Function get typeFactory => (f) => f<SubscriptionItem>();
}

extension SubscriptionItemExtension on SubscriptionItem {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  SubscriptionItem copyWith({String? id, Price? price, String? subscription}) =>
      SubscriptionItem(
          id: id ?? this.id,
          price: price ?? this.price,
          subscription: subscription ?? this.subscription);
}

extension PriceTypeMapper on PriceType {
  static PriceType fromString(String value) {
    switch (value) {
      case 'one_time':
        return PriceType.one_time;
      case 'recurring':
        return PriceType.recurring;
      default:
        throw MapperException('Cannot parse String $value to enum PriceType');
    }
  }

  String toStringValue() {
    switch (this) {
      case PriceType.one_time:
        return 'one_time';
      case PriceType.recurring:
        return 'recurring';
    }
  }
}

extension SessionModeMapper on SessionMode {
  static SessionMode fromString(String value) {
    switch (value) {
      case 'payment':
        return SessionMode.payment;
      case 'setup':
        return SessionMode.setup;
      case 'subscription':
        return SessionMode.subscription;
      default:
        throw MapperException('Cannot parse String $value to enum SessionMode');
    }
  }

  String toStringValue() {
    switch (this) {
      case SessionMode.payment:
        return 'payment';
      case SessionMode.setup:
        return 'setup';
      case SessionMode.subscription:
        return 'subscription';
    }
  }
}

extension PaymentMethodTypeMapper on PaymentMethodType {
  static PaymentMethodType fromString(String value) {
    switch (value) {
      case 'alipay':
        return PaymentMethodType.alipay;
      case 'card':
        return PaymentMethodType.card;
      case 'ideal':
        return PaymentMethodType.ideal;
      case 'fpx':
        return PaymentMethodType.fpx;
      case 'bacs_debit':
        return PaymentMethodType.bacs_debit;
      case 'bancontact':
        return PaymentMethodType.bancontact;
      case 'giropay':
        return PaymentMethodType.giropay;
      case 'p24':
        return PaymentMethodType.p24;
      case 'eps':
        return PaymentMethodType.eps;
      case 'sofort':
        return PaymentMethodType.sofort;
      case 'sepaDebit':
        return PaymentMethodType.sepaDebit;
      case 'grabpay':
        return PaymentMethodType.grabpay;
      case 'afterpay_clearpay':
        return PaymentMethodType.afterpay_clearpay;
      default:
        throw MapperException(
            'Cannot parse String $value to enum PaymentMethodType');
    }
  }

  String toStringValue() {
    switch (this) {
      case PaymentMethodType.alipay:
        return 'alipay';
      case PaymentMethodType.card:
        return 'card';
      case PaymentMethodType.ideal:
        return 'ideal';
      case PaymentMethodType.fpx:
        return 'fpx';
      case PaymentMethodType.bacs_debit:
        return 'bacs_debit';
      case PaymentMethodType.bancontact:
        return 'bancontact';
      case PaymentMethodType.giropay:
        return 'giropay';
      case PaymentMethodType.p24:
        return 'p24';
      case PaymentMethodType.eps:
        return 'eps';
      case PaymentMethodType.sofort:
        return 'sofort';
      case PaymentMethodType.sepaDebit:
        return 'sepaDebit';
      case PaymentMethodType.grabpay:
        return 'grabpay';
      case PaymentMethodType.afterpay_clearpay:
        return 'afterpay_clearpay';
    }
  }
}

extension SubscriptionStatusMapper on SubscriptionStatus {
  static SubscriptionStatus fromString(String value) {
    switch (value) {
      case 'incomplete':
        return SubscriptionStatus.incomplete;
      case 'incomplete_expired':
        return SubscriptionStatus.incomplete_expired;
      case 'trialing':
        return SubscriptionStatus.trialing;
      case 'active':
        return SubscriptionStatus.active;
      case 'past_due':
        return SubscriptionStatus.past_due;
      case 'canceled':
        return SubscriptionStatus.canceled;
      case 'unpaid':
        return SubscriptionStatus.unpaid;
      case 'all':
        return SubscriptionStatus.all;
      case 'ended':
        return SubscriptionStatus.ended;
      default:
        throw MapperException(
            'Cannot parse String $value to enum SubscriptionStatus');
    }
  }

  String toStringValue() {
    switch (this) {
      case SubscriptionStatus.incomplete:
        return 'incomplete';
      case SubscriptionStatus.incomplete_expired:
        return 'incomplete_expired';
      case SubscriptionStatus.trialing:
        return 'trialing';
      case SubscriptionStatus.active:
        return 'active';
      case SubscriptionStatus.past_due:
        return 'past_due';
      case SubscriptionStatus.canceled:
        return 'canceled';
      case SubscriptionStatus.unpaid:
        return 'unpaid';
      case SubscriptionStatus.all:
        return 'all';
      case SubscriptionStatus.ended:
        return 'ended';
    }
  }
}

// === ALL STATICALLY REGISTERED MAPPERS ===

var _mappers = <String, Mapper>{
  // primitive mappers
  'dynamic': _PrimitiveMapper((dynamic v) => v),
  'String': _PrimitiveMapper<String>((dynamic v) => v.toString()),
  'int': _PrimitiveMapper<int>((dynamic v) => num.parse(v.toString()).round()),
  'double': _PrimitiveMapper<double>((dynamic v) => double.parse(v.toString())),
  'num': _PrimitiveMapper<num>((dynamic v) => num.parse(v.toString())),
  'bool': _PrimitiveMapper<bool>(
      (dynamic v) => v is num ? v != 0 : v.toString() == 'true'),
  'List': _ListMapper(),
  'Map': _MapMapper(),
  // generated mappers
  'BalanceTransaction': BalanceTransactionMapper._(),
  'Charge': ChargeMapper._(),
  'PaymentMethodDetails': PaymentMethodDetailsMapper._(),
  'PaymentMethodDetailsCard': PaymentMethodDetailsCardMapper._(),
  'Customer': CustomerMapper._(),
  'DataList': DataListMapper._(),
  'PaymentIntent': PaymentIntentMapper._(),
  'Price': PriceMapper._(),
  'Refund': RefundMapper._(),
  'CreateCustomerRequest': CreateCustomerRequestMapper._(),
  'CreateRefundRequest': CreateRefundRequestMapper._(),
  'CreateSessionRequest': CreateSessionRequestMapper._(),
  'LineItem': LineItemMapper._(),
  'CreateSetupIntentRequest': CreateSetupIntentRequestMapper._(),
  'ListSubscriptionRequest': ListSubscriptionRequestMapper._(),
  'Session': SessionMapper._(),
  'SetupIntent': SetupIntentMapper._(),
  'Subscription': SubscriptionMapper._(),
  'SubscriptionItem': SubscriptionItemMapper._(),

  'PriceType': _EnumMapper<PriceType>(
      PriceTypeMapper.fromString, (PriceType p) => p.toStringValue()),
  'SessionMode': _EnumMapper<SessionMode>(
      SessionModeMapper.fromString, (SessionMode s) => s.toStringValue()),
  'PaymentMethodType': _EnumMapper<PaymentMethodType>(
      PaymentMethodTypeMapper.fromString,
      (PaymentMethodType p) => p.toStringValue()),
  'SubscriptionStatus': _EnumMapper<SubscriptionStatus>(
      SubscriptionStatusMapper.fromString,
      (SubscriptionStatus s) => s.toStringValue()),
};

// === GENERATED UTILITY CLASSES ===

abstract class Mapper<T> {
  dynamic encode(T self);
  Function get decoder;
  Function get typeFactory;

  String stringify(T self);
  int hash(T self);
  bool equals(T self, T other);

  Mapper._();

  static T fromValue<T>(dynamic value) {
    if (value.runtimeType == T) {
      return value as T;
    } else {
      TypeInfo typeInfo;
      if (value is Map<String, dynamic> && value['_type'] != null) {
        typeInfo = getTypeInfo(value['_type'] as String);
      } else {
        typeInfo = getTypeInfo<T>();
      }
      var mapper = _mappers[typeInfo.type];
      if (mapper != null) {
        return genericCall(typeInfo, mapper.decoder, value) as T;
      } else {
        throw MapperException(
            'Cannot decode value $value of type ${value.runtimeType} to type $T. Unknown type. Did you forgot to include the class or register a custom mapper?');
      }
    }
  }

  static dynamic toValue(dynamic value) {
    var typeInfo = getTypeInfo(value.runtimeType.toString());
    if (_mappers[typeInfo.type] != null) {
      var encoded = _mappers[typeInfo.type]!.encode(value);
      if (encoded is Map<String, dynamic>) {
        clearType(encoded);
        if (typeInfo.params.isNotEmpty) {
          encoded['_type'] = typeInfo.toString();
        }
      }
      return encoded;
    } else {
      throw MapperException(
          'Cannot encode value $value of type ${value.runtimeType}. Unknown type. Did you forgot to include the class or register a custom mapper?');
    }
  }

  static T fromMap<T>(Map<String, dynamic> map) => fromValue<T>(map);

  static Map<String, dynamic> toMap(dynamic object) {
    var value = toValue(object);
    if (value is Map<String, dynamic>) {
      return value;
    } else {
      throw MapperException(
          'Cannot encode value of type ${object.runtimeType} to Map. Instead encoded to type ${value.runtimeType}.');
    }
  }

  static T fromJson<T>(String json) => fromValue<T>(jsonDecode(json));
  static String toJson(dynamic object) => jsonEncode(toValue(object));

  static bool isEqual(dynamic value, Object? other) {
    var type = baseType(value.runtimeType);
    if (_mappers[type] != null) {
      return _mappers[type]!.equals(value, other);
    } else {
      throw MapperException(
          'Cannot compare value of type $type for equality. Unknown type. Did you forgot to include the class or register a custom mapper?');
    }
  }

  static String asString(dynamic value) {
    var type = baseType(value.runtimeType);
    if (_mappers[type] != null) {
      return _mappers[type]!.stringify(value);
    } else {
      throw MapperException(
          'Cannot stringify value of type $type. Unknown type. Did you forgot to include the class or register a custom mapper?');
    }
  }

  static void use<T>(Mapper<T> mapper) => _mappers[baseType<T>()] = mapper;

  static String baseType<T>([Type? t]) {
    String input = (t ?? T).toString();
    return input.split('<')[0];
  }
}

void clearType(Map<String, dynamic> map) {
  map.removeWhere((key, _) => key == '_type');
  map.values.whereType<Map<String, dynamic>>().forEach(clearType);
  map.values
      .whereType<List>()
      .forEach((l) => l.whereType<Map<String, dynamic>>().forEach(clearType));
}

abstract class Mappable<T> {
  Mapper? get _mapper => _mappers[Mapper.baseType(runtimeType)];

  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);

  @override
  String toString() => _mapper?.stringify(this) ?? super.toString();
  @override
  bool operator ==(Object other) => _mapper != null
      ? identical(this, other) ||
          runtimeType == other.runtimeType && _mapper!.equals(this, other)
      : super == other;
  @override
  int get hashCode => _mapper?.hash(this) ?? super.hashCode;
}

T checked<T, U>(dynamic v, T Function(U) fn) {
  if (v is U) {
    return fn(v);
  } else {
    throw MapperException(
        'Cannot decode value of type ${v.runtimeType} to type $T, because a value of type $U is expected.');
  }
}

class _ListMapper extends BaseMapper<List> {
  @override
  Function get decoder => decode;
  List<T> decode<T>(dynamic l) =>
      checked(l, (List l) => l.map((v) => Mapper.fromValue<T>(v)).toList());

  @override
  List encode(List self) => self.map((v) => Mapper.toValue(v)).toList();
  @override
  Function get typeFactory => <T>(f) => f<List<T>>();
}

class _MapMapper extends BaseMapper<Map> {
  @override
  Function get decoder => decode;
  Map<K, V> decode<K, V>(dynamic m) => checked(
      m,
      (Map m) => m.map((key, value) =>
          MapEntry(Mapper.fromValue<K>(key), Mapper.fromValue<V>(value))));

  @override
  Map encode(Map self) => self.map(
      (key, value) => MapEntry(Mapper.toValue(key), Mapper.toValue(value)));
  @override
  Function get typeFactory => <K, V>(f) => f<Map<K, V>>();
}

abstract mixin class BaseMapper<T> implements Mapper<T> {
  @override
  bool equals(T self, Object? other) => self == other;
  @override
  int hash(T self) => self.hashCode;
  @override
  String stringify(T self) => self.toString();
  @override
  Function get typeFactory => (f) => f<T>();
}

class _PrimitiveMapper<T> with BaseMapper<T> implements Mapper<T> {
  const _PrimitiveMapper(this.decoder);

  final T Function(dynamic value) decoder;
  @override
  dynamic encode(T value) => value;
}

class _EnumMapper<T> with BaseMapper<T> implements Mapper<T> {
  _EnumMapper(this.strDecoder, this.encoder);

  Function get decoder => (dynamic v) => checked(v, strDecoder);

  final T Function(String value) strDecoder;
  final String Function(T value) encoder;

  @override
  String encode(T self) => encoder(self);
}

extension on Map<String, dynamic> {
  T get<T>(String key) {
    if (this[key] == null) {
      throw MapperException('Parameter $key is required.');
    }
    return Mapper.fromValue<T>(this[key]!);
  }

  T? getOpt<T>(String key) {
    if (this[key] == null) {
      return null;
    }
    return get<T>(key);
  }

  List<T> getList<T>(String key) {
    if (this[key] == null) {
      throw MapperException('Parameter $key is required.');
    } else if (this[key] is! List) {
      throw MapperException(
          'Parameter ${this[key]} with key $key is not a List');
    }
    List value = this[key] as List<dynamic>;
    return value.map((dynamic item) => Mapper.fromValue<T>(item)).toList();
  }

  List<T>? getListOpt<T>(String key) {
    if (this[key] == null) {
      return null;
    }
    return getList<T>(key);
  }

  Map<K, V> getMap<K, V>(String key) {
    if (this[key] == null) {
      throw MapperException('Parameter $key is required.');
    } else if (this[key] is! Map) {
      throw MapperException(
          'Parameter ${this[key]} with key $key is not a Map');
    }
    Map value = this[key] as Map<dynamic, dynamic>;
    return value.map((dynamic key, dynamic value) =>
        MapEntry(Mapper.fromValue<K>(key), Mapper.fromValue<V>(value)));
  }

  Map<K, V>? getMapOpt<K, V>(String key) {
    if (this[key] == null) {
      return null;
    }
    return getMap<K, V>(key);
  }
}

class MapperException implements Exception {
  final String message;
  const MapperException(this.message);

  @override
  String toString() => 'MapperException: $message';
}

class TypeInfo {
  String type = '';
  List<TypeInfo> params = [];
  TypeInfo? parent;

  @override
  String toString() =>
      '$type${params.isNotEmpty ? '<${params.join(', ')}>' : ''}';
}

TypeInfo getTypeInfo<T>([String? type]) {
  var typeString = type ?? T.toString();
  var curr = TypeInfo();

  for (var i = 0; i < typeString.length; i++) {
    var c = typeString[i];
    if (c == '<') {
      var t = TypeInfo();
      curr.params.add(t..parent = curr);
      curr = t;
    } else if (c == '>') {
      curr = curr.parent!;
    } else if (c == ' ') {
      continue;
    } else if (c == ',') {
      var t = TypeInfo();
      curr = curr.parent!;
      curr.params.add(t..parent = curr);
      curr = t;
    } else {
      curr.type += c;
    }
  }

  return curr;
}

void genericCall(TypeInfo info, Function fn, value) {
  var params = [...info.params];

  dynamic call(dynamic Function<T>() next) {
    var t = params.removeAt(0);
    if (_mappers[t.type] != null) {
      return genericCall(t, _mappers[t.type]!.typeFactory, next);
    } else {
      throw MapperException('Cannot find generic wrapper for type $t.');
    }
  }

  if (params.isEmpty) {
    return fn(value);
  } else if (params.length == 1) {
    return call(<A>() => fn<A>(value));
  } else if (params.length == 2) {
    return call(<A>() => call(<B>() => fn<A, B>(value)));
  } else if (params.length == 3) {
    return call(<A>() => call(<B>() => call(<C>() => fn<A, B, C>(value))));
  } else {
    throw MapperException(
        'Mapper only supports generic classes with up to 3 type arguments.');
  }
}
