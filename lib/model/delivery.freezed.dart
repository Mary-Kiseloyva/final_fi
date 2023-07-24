// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Delivery _$DeliveryFromJson(Map<String, dynamic> json) {
  return _Delivery.fromJson(json);
}

/// @nodoc
mixin _$Delivery {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "icon")
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(name: "farm_address")
  String? get farmAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryCopyWith<Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryCopyWith<$Res> {
  factory $DeliveryCopyWith(Delivery value, $Res Function(Delivery) then) =
      _$DeliveryCopyWithImpl<$Res, Delivery>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "icon") String icon,
      @JsonKey(name: "farm_address") String? farmAddress});
}

/// @nodoc
class _$DeliveryCopyWithImpl<$Res, $Val extends Delivery>
    implements $DeliveryCopyWith<$Res> {
  _$DeliveryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? icon = null,
    Object? farmAddress = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      farmAddress: freezed == farmAddress
          ? _value.farmAddress
          : farmAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryCopyWith<$Res> implements $DeliveryCopyWith<$Res> {
  factory _$$_DeliveryCopyWith(
          _$_Delivery value, $Res Function(_$_Delivery) then) =
      __$$_DeliveryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "icon") String icon,
      @JsonKey(name: "farm_address") String? farmAddress});
}

/// @nodoc
class __$$_DeliveryCopyWithImpl<$Res>
    extends _$DeliveryCopyWithImpl<$Res, _$_Delivery>
    implements _$$_DeliveryCopyWith<$Res> {
  __$$_DeliveryCopyWithImpl(
      _$_Delivery _value, $Res Function(_$_Delivery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? icon = null,
    Object? farmAddress = freezed,
  }) {
    return _then(_$_Delivery(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      farmAddress: freezed == farmAddress
          ? _value.farmAddress
          : farmAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Delivery implements _Delivery {
  _$_Delivery(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "icon") required this.icon,
      @JsonKey(name: "farm_address") this.farmAddress});

  factory _$_Delivery.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "type")
  final String type;
  @override
  @JsonKey(name: "icon")
  final String icon;
  @override
  @JsonKey(name: "farm_address")
  final String? farmAddress;

  @override
  String toString() {
    return 'Delivery(id: $id, title: $title, description: $description, type: $type, icon: $icon, farmAddress: $farmAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delivery &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.farmAddress, farmAddress) ||
                other.farmAddress == farmAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, type, icon, farmAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryCopyWith<_$_Delivery> get copyWith =>
      __$$_DeliveryCopyWithImpl<_$_Delivery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryToJson(
      this,
    );
  }
}

abstract class _Delivery implements Delivery {
  factory _Delivery(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "title") required final String title,
      @JsonKey(name: "description") required final String description,
      @JsonKey(name: "type") required final String type,
      @JsonKey(name: "icon") required final String icon,
      @JsonKey(name: "farm_address") final String? farmAddress}) = _$_Delivery;

  factory _Delivery.fromJson(Map<String, dynamic> json) = _$_Delivery.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(name: "icon")
  String get icon;
  @override
  @JsonKey(name: "farm_address")
  String? get farmAddress;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryCopyWith<_$_Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}
