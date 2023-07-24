// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDetails _$$_ProductDetailsFromJson(Map<String, dynamic> json) =>
    _$_ProductDetails(
      id: json['id'] as int,
      price: Decimal.fromJson(json['price'] as String),
      badges: (json['badges'] as List<dynamic>)
          .map((e) => Badge.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      brand: json['brand'] as String?,
      picture: json['picture'] as String,
      article: json['article'] as String?,
      description: json['description'] as String?,
      available: json['available'] as bool?,
      rating: (json['rating'] as num?)?.toDouble(),
      oldPrice: json['old_price'] == null
          ? null
          : Decimal.fromJson(json['old_price'] as String),
      reviewsCount: json['reviews_count'] as int?,
      cityFias: json['city_fias'] as String?,
    );

Map<String, dynamic> _$$_ProductDetailsToJson(_$_ProductDetails instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'price': instance.price.toJson(),
    'badges': instance.badges.map((e) => e.toJson()).toList(),
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('brand', instance.brand);
  val['picture'] = instance.picture;
  writeNotNull('article', instance.article);
  writeNotNull('description', instance.description);
  writeNotNull('available', instance.available);
  writeNotNull('rating', instance.rating);
  writeNotNull('old_price', instance.oldPrice?.toJson());
  writeNotNull('reviews_count', instance.reviewsCount);
  writeNotNull('city_fias', instance.cityFias);
  return val;
}
