// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartUpdate _$$_CartUpdateFromJson(Map<String, dynamic> json) =>
    _$_CartUpdate(
      productId: json['product_id'] as int,
      cityFias: json['city_fias'] as String,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_CartUpdateToJson(_$_CartUpdate instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'city_fias': instance.cityFias,
      'count': instance.count,
    };
