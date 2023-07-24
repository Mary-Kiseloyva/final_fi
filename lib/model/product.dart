import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'badge.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "picture") required String picture,
    @JsonKey(name: "badges") required List<Badge> badges,
    @JsonKey(name: "price") required Decimal price,
    @JsonKey(name: "old_price") Decimal? oldPrice,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "article") String? article,
    @JsonKey(name: "rating") double? rating,
    @JsonKey(name: "reviews_count") int? reviewsCount,
    @JsonKey(name: "city_fias") String? cityFias,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}