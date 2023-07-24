// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deliveries_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveriesRequest _$DeliveriesRequestFromJson(Map<String, dynamic> json) {
  return _DeliveriesRequest.fromJson(json);
}

/// @nodoc
mixin _$DeliveriesRequest {
  List<ProductWithCount> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveriesRequestCopyWith<DeliveriesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveriesRequestCopyWith<$Res> {
  factory $DeliveriesRequestCopyWith(
          DeliveriesRequest value, $Res Function(DeliveriesRequest) then) =
      _$DeliveriesRequestCopyWithImpl<$Res, DeliveriesRequest>;
  @useResult
  $Res call({List<ProductWithCount> products});
}

/// @nodoc
class _$DeliveriesRequestCopyWithImpl<$Res, $Val extends DeliveriesRequest>
    implements $DeliveriesRequestCopyWith<$Res> {
  _$DeliveriesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveriesRequestCopyWith<$Res>
    implements $DeliveriesRequestCopyWith<$Res> {
  factory _$$_DeliveriesRequestCopyWith(_$_DeliveriesRequest value,
          $Res Function(_$_DeliveriesRequest) then) =
      __$$_DeliveriesRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductWithCount> products});
}

/// @nodoc
class __$$_DeliveriesRequestCopyWithImpl<$Res>
    extends _$DeliveriesRequestCopyWithImpl<$Res, _$_DeliveriesRequest>
    implements _$$_DeliveriesRequestCopyWith<$Res> {
  __$$_DeliveriesRequestCopyWithImpl(
      _$_DeliveriesRequest _value, $Res Function(_$_DeliveriesRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$_DeliveriesRequest(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveriesRequest implements _DeliveriesRequest {
  _$_DeliveriesRequest({required final List<ProductWithCount> products})
      : _products = products;

  factory _$_DeliveriesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveriesRequestFromJson(json);

  final List<ProductWithCount> _products;
  @override
  List<ProductWithCount> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'DeliveriesRequest(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveriesRequest &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveriesRequestCopyWith<_$_DeliveriesRequest> get copyWith =>
      __$$_DeliveriesRequestCopyWithImpl<_$_DeliveriesRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveriesRequestToJson(
      this,
    );
  }
}

abstract class _DeliveriesRequest implements DeliveriesRequest {
  factory _DeliveriesRequest({required final List<ProductWithCount> products}) =
      _$_DeliveriesRequest;

  factory _DeliveriesRequest.fromJson(Map<String, dynamic> json) =
      _$_DeliveriesRequest.fromJson;

  @override
  List<ProductWithCount> get products;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveriesRequestCopyWith<_$_DeliveriesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
