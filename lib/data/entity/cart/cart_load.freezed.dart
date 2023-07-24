// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_load.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartLoad _$CartLoadFromJson(Map<String, dynamic> json) {
  return _CartLoad.fromJson(json);
}

/// @nodoc
mixin _$CartLoad {
  @JsonKey(name: 'promocode')
  String? get promocode => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_fias')
  String get cityFias => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartLoadCopyWith<CartLoad> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartLoadCopyWith<$Res> {
  factory $CartLoadCopyWith(CartLoad value, $Res Function(CartLoad) then) =
      _$CartLoadCopyWithImpl<$Res, CartLoad>;
  @useResult
  $Res call(
      {@JsonKey(name: 'promocode') String? promocode,
      @JsonKey(name: 'city_fias') String cityFias});
}

/// @nodoc
class _$CartLoadCopyWithImpl<$Res, $Val extends CartLoad>
    implements $CartLoadCopyWith<$Res> {
  _$CartLoadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promocode = freezed,
    Object? cityFias = null,
  }) {
    return _then(_value.copyWith(
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      cityFias: null == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartLoadCopyWith<$Res> implements $CartLoadCopyWith<$Res> {
  factory _$$_CartLoadCopyWith(
          _$_CartLoad value, $Res Function(_$_CartLoad) then) =
      __$$_CartLoadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'promocode') String? promocode,
      @JsonKey(name: 'city_fias') String cityFias});
}

/// @nodoc
class __$$_CartLoadCopyWithImpl<$Res>
    extends _$CartLoadCopyWithImpl<$Res, _$_CartLoad>
    implements _$$_CartLoadCopyWith<$Res> {
  __$$_CartLoadCopyWithImpl(
      _$_CartLoad _value, $Res Function(_$_CartLoad) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promocode = freezed,
    Object? cityFias = null,
  }) {
    return _then(_$_CartLoad(
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      cityFias: null == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_CartLoad implements _CartLoad {
  _$_CartLoad(
      {@JsonKey(name: 'promocode') this.promocode,
      @JsonKey(name: 'city_fias') required this.cityFias});

  factory _$_CartLoad.fromJson(Map<String, dynamic> json) =>
      _$$_CartLoadFromJson(json);

  @override
  @JsonKey(name: 'promocode')
  final String? promocode;
  @override
  @JsonKey(name: 'city_fias')
  final String cityFias;

  @override
  String toString() {
    return 'CartLoad(promocode: $promocode, cityFias: $cityFias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartLoad &&
            (identical(other.promocode, promocode) ||
                other.promocode == promocode) &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, promocode, cityFias);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartLoadCopyWith<_$_CartLoad> get copyWith =>
      __$$_CartLoadCopyWithImpl<_$_CartLoad>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartLoadToJson(
      this,
    );
  }
}

abstract class _CartLoad implements CartLoad {
  factory _CartLoad(
          {@JsonKey(name: 'promocode') final String? promocode,
          @JsonKey(name: 'city_fias') required final String cityFias}) =
      _$_CartLoad;

  factory _CartLoad.fromJson(Map<String, dynamic> json) = _$_CartLoad.fromJson;

  @override
  @JsonKey(name: 'promocode')
  String? get promocode;
  @override
  @JsonKey(name: 'city_fias')
  String get cityFias;
  @override
  @JsonKey(ignore: true)
  _$$_CartLoadCopyWith<_$_CartLoad> get copyWith =>
      throw _privateConstructorUsedError;
}
