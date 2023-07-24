import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  factory Order({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'items') required List<OrderItem> items,
    @JsonKey(name: 'user_name') required String username,
    @JsonKey(name: 'user_phone') required String userPhone,
    @JsonKey(name: 'user_email') required String userEmail,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'delivery_id') required String deliveryId,
    @JsonKey(name: 'delivery_type') required String deliveryType,
    @JsonKey(name: 'delivery_price') int? deliveryPrice,
    @JsonKey(name: 'delivery_date')  String? deliveryDate,
    @JsonKey(name: 'delivery_time') String? deliveryTime,
    @JsonKey(name: 'payment_id') required String paymentId,
    @JsonKey(name: 'payment_type') required String paymentType,
    @JsonKey(name: 'items_price') required Decimal itemsPrice,
    @JsonKey(name: 'discount') int? discount,
    @JsonKey(name: 'full_price') Decimal? fullPrice,
    @JsonKey(name: 'promocode')  String? promocode,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'error_text') String? errorText,
    @JsonKey(name: 'brand') String? brand,
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'repeated_days') int? repeatedDays,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
class OrderItem with _$OrderItem {
  factory OrderItem({
    int? id,
    required int count,
    required String picture,
    required String name,
    required Decimal price,
    int? discount,
    int? order,
    int? product,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}
