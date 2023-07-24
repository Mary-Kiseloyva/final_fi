// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderRequest _$$_OrderRequestFromJson(Map<String, dynamic> json) =>
    _$_OrderRequest(
      cityFias: json['city_fias'] as String?,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductWithCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      username: json['user_name'] as String,
      userPhone: json['user_phone'] as String,
      userEmail: json['user_email'] as String,
      deliveryId: json['delivery_id'] as String,
      deliveryType: json['delivery_type'] as String,
      deliveryDate: json['delivery_date'] as String,
      paymentId: json['payment_id'] as String,
      paymentType: json['payment_type'] as String,
      address: json['address'] as String?,
      comment: json['comment'] as String?,
      repeatedDays: json['repeated_days'] as int?,
    );

Map<String, dynamic> _$$_OrderRequestToJson(_$_OrderRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('city_fias', instance.cityFias);
  val['products'] = instance.products;
  val['user_name'] = instance.username;
  val['user_phone'] = instance.userPhone;
  val['user_email'] = instance.userEmail;
  val['delivery_id'] = instance.deliveryId;
  val['delivery_type'] = instance.deliveryType;
  val['delivery_date'] = instance.deliveryDate;
  val['payment_id'] = instance.paymentId;
  val['payment_type'] = instance.paymentType;
  writeNotNull('address', instance.address);
  writeNotNull('comment', instance.comment);
  writeNotNull('repeated_days', instance.repeatedDays);
  return val;
}
