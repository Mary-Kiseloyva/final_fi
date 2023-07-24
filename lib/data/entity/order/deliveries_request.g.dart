// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deliveries_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveriesRequest _$$_DeliveriesRequestFromJson(Map<String, dynamic> json) =>
    _$_DeliveriesRequest(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductWithCount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DeliveriesRequestToJson(
        _$_DeliveriesRequest instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
