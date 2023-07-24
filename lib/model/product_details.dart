import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'badge.dart';

part 'product_details.freezed.dart';
part 'product_details.g.dart';

@freezed
class ProductDetails with _$ProductDetails {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory ProductDetails({
    required int id,
    required Decimal price,
    required List<Badge> badges,
    required String name,
    String? brand,
    String? picture,
    String? article,
    String? description,
    bool? available,
    double? rating,
    @JsonKey(name: 'old_price') Decimal? oldPrice,
    @JsonKey(name: 'reviews_count') int? reviewsCount,
    @JsonKey(name: 'city_fias') String? cityFias,
  }) = _ProductDetails;

  factory ProductDetails.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsFromJson(json);
}
