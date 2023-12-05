import 'dart:convert';

import 'package:equatable/equatable.dart';

class RetailPrice extends Equatable {
  final double? amount;
  final String? currencyCode;

  const RetailPrice({this.amount, this.currencyCode});

  factory RetailPrice.fromMap(Map<String, dynamic> data) => RetailPrice(
        amount: (data['amount'] as num?)?.toDouble(),
        currencyCode: data['currencyCode'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'amount': amount,
        'currencyCode': currencyCode,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [RetailPrice].
  factory RetailPrice.fromJson(String data) {
    return RetailPrice.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [RetailPrice] to a JSON string.
  String toJson() => json.encode(toMap());

  RetailPrice copyWith({
    double? amount,
    String? currencyCode,
  }) {
    return RetailPrice(
      amount: amount ?? this.amount,
      currencyCode: currencyCode ?? this.currencyCode,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [amount, currencyCode];
}
