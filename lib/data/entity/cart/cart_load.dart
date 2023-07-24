import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_load.freezed.dart';
part 'cart_load.g.dart';

@freezed
class CartLoad with _$CartLoad{
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  factory CartLoad({
    @JsonKey(name: 'promocode') String? promocode,
    @JsonKey(name: 'city_fias') required String cityFias,
  }) = _CartLoad;

  factory CartLoad.fromJson(Map<String, dynamic> json) =>
      _$CartLoadFromJson(json);
}