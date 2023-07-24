// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as int?,
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      username: json['user_name'] as String,
      userPhone: json['user_phone'] as String,
      userEmail: json['user_email'] as String,
      createdAt: json['created_at'] as String?,
      deliveryId: json['delivery_id'] as String,
      deliveryType: json['delivery_type'] as String,
      deliveryPrice: json['delivery_price'] as int?,
      deliveryDate: json['delivery_date'] as String?,
      deliveryTime: json['delivery_time'] as String?,
      paymentId: json['payment_id'] as String,
      paymentType: json['payment_type'] as String,
      itemsPrice: Decimal.fromJson(json['items_price'] as String),
      discount: json['discount'] as int?,
      fullPrice: json['full_price'] == null
          ? null
          : Decimal.fromJson(json['full_price'] as String),
      promocode: json['promocode'] as String?,
      address: json['address'] as String?,
      comment: json['comment'] as String?,
      errorText: json['error_text'] as String?,
      brand: json['brand'] as String?,
      status: json['status'] as int?,
      repeatedDays: json['repeated_days'] as int?,
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'items': instance.items,
      'user_name': instance.username,
      'user_phone': instance.userPhone,
      'user_email': instance.userEmail,
      'created_at': instance.createdAt,
      'delivery_id': instance.deliveryId,
      'delivery_type': instance.deliveryType,
      'delivery_price': instance.deliveryPrice,
      'delivery_date': instance.deliveryDate,
      'delivery_time': instance.deliveryTime,
      'payment_id': instance.paymentId,
      'payment_type': instance.paymentType,
      'items_price': instance.itemsPrice,
      'discount': instance.discount,
      'full_price': instance.fullPrice,
      'promocode': instance.promocode,
      'address': instance.address,
      'comment': instance.comment,
      'error_text': instance.errorText,
      'brand': instance.brand,
      'status': instance.status,
      'repeated_days': instance.repeatedDays,
    };

_$_OrderItem _$$_OrderItemFromJson(Map<String, dynamic> json) => _$_OrderItem(
      id: json['id'] as int?,
      count: json['count'] as int,
      picture: json['picture'] as String,
      name: json['name'] as String,
      price: Decimal.fromJson(json['price'] as String),
      discount: json['discount'] as int?,
      order: json['order'] as int?,
      product: json['product'] as int?,
    );

Map<String, dynamic> _$$_OrderItemToJson(_$_OrderItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
      'picture': instance.picture,
      'name': instance.name,
      'price': instance.price,
      'discount': instance.discount,
      'order': instance.order,
      'product': instance.product,
    };
