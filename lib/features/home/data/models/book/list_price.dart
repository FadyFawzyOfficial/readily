import 'dart:convert';

import 'package:equatable/equatable.dart';

class ListPrice extends Equatable {
  final double? amount;
  final String? currencyCode;

  const ListPrice({this.amount, this.currencyCode});

  factory ListPrice.fromMap(Map<String, dynamic> data) => ListPrice(
        amount: (data['amount'] as num?)?.toDouble(),
        currencyCode: data['currencyCode'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'amount': amount,
        'currencyCode': currencyCode,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ListPrice].
  factory ListPrice.fromJson(String data) {
    return ListPrice.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ListPrice] to a JSON string.
  String toJson() => json.encode(toMap());

  ListPrice copyWith({
    double? amount,
    String? currencyCode,
  }) {
    return ListPrice(
      amount: amount ?? this.amount,
      currencyCode: currencyCode ?? this.currencyCode,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [amount, currencyCode];
}
