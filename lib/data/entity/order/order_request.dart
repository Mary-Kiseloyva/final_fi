import 'package:fi/data/entity/order/product_with_count.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_request.freezed.dart';

part 'order_request.g.dart';

@freezed
class OrderRequest with _$OrderRequest {
  factory OrderRequest({
    @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias,
    required List<ProductWithCount> products,
    @JsonKey(name: 'user_name') required String username,
    @JsonKey(name: 'user_phone') required String userPhone,
    @JsonKey(name: 'user_email') required String userEmail,
    @JsonKey(name: 'delivery_id') required String deliveryId,
    @JsonKey(name: 'delivery_type') required String deliveryType,
    @JsonKey(name: 'delivery_date') required String deliveryDate,
    @JsonKey(name: 'payment_id') required String paymentId,
    @JsonKey(name: 'payment_type') required String paymentType,
    @JsonKey(name: 'address', includeIfNull: false) String? address,
    @JsonKey(name: 'comment', includeIfNull: false) String? comment,
    @JsonKey(name: 'repeated_days', includeIfNull: false) int? repeatedDays,
  }) = _OrderRequest;

  factory OrderRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderRequestFromJson(json);
}
