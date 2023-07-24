import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery.freezed.dart';
part 'delivery.g.dart';

@freezed
class Delivery with _$Delivery {
  factory Delivery({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "icon") required String icon,
    @JsonKey(name: "farm_address") String? farmAddress,
  }) = _Delivery;

  factory Delivery.fromJson(Map<String, dynamic> json) =>
      _$DeliveryFromJson(json);
}