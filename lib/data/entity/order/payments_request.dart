import 'package:fi/data/entity/order/product_with_count.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payments_request.freezed.dart';
part 'payments_request.g.dart';

@freezed
class PaymentsRequest with _$PaymentsRequest {
  factory PaymentsRequest({
    @JsonKey(name: 'city_fias', includeIfNull: true) String? cityFias,
    required List<ProductWithCount> products,
    required String deliveryId,
  }) = _PaymentsRequest;

  factory PaymentsRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentsRequestFromJson(json);
}