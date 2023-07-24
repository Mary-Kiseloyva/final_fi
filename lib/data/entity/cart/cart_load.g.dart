// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_load.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartLoad _$$_CartLoadFromJson(Map<String, dynamic> json) => _$_CartLoad(
      promocode: json['promocode'] as String?,
      cityFias: json['city_fias'] as String,
    );

Map<String, dynamic> _$$_CartLoadToJson(_$_CartLoad instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('promocode', instance.promocode);
  val['city_fias'] = instance.cityFias;
  return val;
}
