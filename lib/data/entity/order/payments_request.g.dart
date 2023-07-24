// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payments_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentsRequest _$$_PaymentsRequestFromJson(Map<String, dynamic> json) =>
    _$_PaymentsRequest(
      cityFias: json['city_fias'] as String?,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductWithCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      deliveryId: json['deliveryId'] as String,
    );

Map<String, dynamic> _$$_PaymentsRequestToJson(_$_PaymentsRequest instance) =>
    <String, dynamic>{
      'city_fias': instance.cityFias,
      'products': instance.products,
      'deliveryId': instance.deliveryId,
    };
