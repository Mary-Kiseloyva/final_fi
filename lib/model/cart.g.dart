// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cart _$$_CartFromJson(Map<String, dynamic> json) => _$_Cart(
      price: Decimal.fromJson(json['price'] as String),
      count: json['count'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) => CartProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      oldPrice: json['old_price'] == null
          ? null
          : Decimal.fromJson(json['old_price'] as String),
      applied: json['applied'] as bool?,
    );

Map<String, dynamic> _$$_CartToJson(_$_Cart instance) => <String, dynamic>{
      'price': instance.price,
      'count': instance.count,
      'products': instance.products,
      'old_price': instance.oldPrice,
      'applied': instance.applied,
    };

_$_CartProduct _$$_CartProductFromJson(Map<String, dynamic> json) =>
    _$_CartProduct(
      count: json['count'] as int,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CartProductToJson(_$_CartProduct instance) =>
    <String, dynamic>{
      'count': instance.count,
      'product': instance.product,
    };
