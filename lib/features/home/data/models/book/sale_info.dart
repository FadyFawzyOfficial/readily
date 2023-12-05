import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'list_price.dart';
import 'offer.dart';
import 'retail_price.dart';

class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final ListPrice? listPrice;
  final RetailPrice? retailPrice;
  final String? buyLink;
  final List<Offer>? offers;

  const SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  factory SaleInfo.fromMap(Map<String, dynamic> data) => SaleInfo(
        country: data['country'] as String?,
        saleability: data['saleability'] as String?,
        isEbook: data['isEbook'] as bool?,
        listPrice: data['listPrice'] == null
            ? null
            : ListPrice.fromMap(data['listPrice'] as Map<String, dynamic>),
        retailPrice: data['retailPrice'] == null
            ? null
            : RetailPrice.fromMap(data['retailPrice'] as Map<String, dynamic>),
        buyLink: data['buyLink'] as String?,
        offers: (data['offers'] as List<dynamic>?)
            ?.map((e) => Offer.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'country': country,
        'saleability': saleability,
        'isEbook': isEbook,
        'listPrice': listPrice?.toMap(),
        'retailPrice': retailPrice?.toMap(),
        'buyLink': buyLink,
        'offers': offers?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SaleInfo].
  factory SaleInfo.fromJson(String data) {
    return SaleInfo.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SaleInfo] to a JSON string.
  String toJson() => json.encode(toMap());

  SaleInfo copyWith({
    String? country,
    String? saleability,
    bool? isEbook,
    ListPrice? listPrice,
    RetailPrice? retailPrice,
    String? buyLink,
    List<Offer>? offers,
  }) {
    return SaleInfo(
      country: country ?? this.country,
      saleability: saleability ?? this.saleability,
      isEbook: isEbook ?? this.isEbook,
      listPrice: listPrice ?? this.listPrice,
      retailPrice: retailPrice ?? this.retailPrice,
      buyLink: buyLink ?? this.buyLink,
      offers: offers ?? this.offers,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      country,
      saleability,
      isEbook,
      listPrice,
      retailPrice,
      buyLink,
      offers,
    ];
  }
}
