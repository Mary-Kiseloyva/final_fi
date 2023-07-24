// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderRequest _$OrderRequestFromJson(Map<String, dynamic> json) {
  return _OrderRequest.fromJson(json);
}

/// @nodoc
mixin _$OrderRequest {
  @JsonKey(name: 'city_fias', includeIfNull: false)
  String? get cityFias => throw _privateConstructorUsedError;
  List<ProductWithCount> get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_phone')
  String get userPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_email')
  String get userEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_id')
  String get deliveryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_type')
  String get deliveryType => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_date')
  String get deliveryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_id')
  String get paymentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type')
  String get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'address', includeIfNull: false)
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment', includeIfNull: false)
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'repeated_days', includeIfNull: false)
  int? get repeatedDays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderRequestCopyWith<OrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderRequestCopyWith<$Res> {
  factory $OrderRequestCopyWith(
          OrderRequest value, $Res Function(OrderRequest) then) =
      _$OrderRequestCopyWithImpl<$Res, OrderRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias,
      List<ProductWithCount> products,
      @JsonKey(name: 'user_name') String username,
      @JsonKey(name: 'user_phone') String userPhone,
      @JsonKey(name: 'user_email') String userEmail,
      @JsonKey(name: 'delivery_id') String deliveryId,
      @JsonKey(name: 'delivery_type') String deliveryType,
      @JsonKey(name: 'delivery_date') String deliveryDate,
      @JsonKey(name: 'payment_id') String paymentId,
      @JsonKey(name: 'payment_type') String paymentType,
      @JsonKey(name: 'address', includeIfNull: false) String? address,
      @JsonKey(name: 'comment', includeIfNull: false) String? comment,
      @JsonKey(name: 'repeated_days', includeIfNull: false) int? repeatedDays});
}

/// @nodoc
class _$OrderRequestCopyWithImpl<$Res, $Val extends OrderRequest>
    implements $OrderRequestCopyWith<$Res> {
  _$OrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityFias = freezed,
    Object? products = null,
    Object? username = null,
    Object? userPhone = null,
    Object? userEmail = null,
    Object? deliveryId = null,
    Object? deliveryType = null,
    Object? deliveryDate = null,
    Object? paymentId = null,
    Object? paymentType = null,
    Object? address = freezed,
    Object? comment = freezed,
    Object? repeatedDays = freezed,
  }) {
    return _then(_value.copyWith(
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userPhone: null == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryId: null == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      repeatedDays: freezed == repeatedDays
          ? _value.repeatedDays
          : repeatedDays // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderRequestCopyWith<$Res>
    implements $OrderRequestCopyWith<$Res> {
  factory _$$_OrderRequestCopyWith(
          _$_OrderRequest value, $Res Function(_$_OrderRequest) then) =
      __$$_OrderRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias,
      List<ProductWithCount> products,
      @JsonKey(name: 'user_name') String username,
      @JsonKey(name: 'user_phone') String userPhone,
      @JsonKey(name: 'user_email') String userEmail,
      @JsonKey(name: 'delivery_id') String deliveryId,
      @JsonKey(name: 'delivery_type') String deliveryType,
      @JsonKey(name: 'delivery_date') String deliveryDate,
      @JsonKey(name: 'payment_id') String paymentId,
      @JsonKey(name: 'payment_type') String paymentType,
      @JsonKey(name: 'address', includeIfNull: false) String? address,
      @JsonKey(name: 'comment', includeIfNull: false) String? comment,
      @JsonKey(name: 'repeated_days', includeIfNull: false) int? repeatedDays});
}

/// @nodoc
class __$$_OrderRequestCopyWithImpl<$Res>
    extends _$OrderRequestCopyWithImpl<$Res, _$_OrderRequest>
    implements _$$_OrderRequestCopyWith<$Res> {
  __$$_OrderRequestCopyWithImpl(
      _$_OrderRequest _value, $Res Function(_$_OrderRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityFias = freezed,
    Object? products = null,
    Object? username = null,
    Object? userPhone = null,
    Object? userEmail = null,
    Object? deliveryId = null,
    Object? deliveryType = null,
    Object? deliveryDate = null,
    Object? paymentId = null,
    Object? paymentType = null,
    Object? address = freezed,
    Object? comment = freezed,
    Object? repeatedDays = freezed,
  }) {
    return _then(_$_OrderRequest(
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userPhone: null == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryId: null == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      repeatedDays: freezed == repeatedDays
          ? _value.repeatedDays
          : repeatedDays // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderRequest implements _OrderRequest {
  _$_OrderRequest(
      {@JsonKey(name: 'city_fias', includeIfNull: false) this.cityFias,
      required final List<ProductWithCount> products,
      @JsonKey(name: 'user_name') required this.username,
      @JsonKey(name: 'user_phone') required this.userPhone,
      @JsonKey(name: 'user_email') required this.userEmail,
      @JsonKey(name: 'delivery_id') required this.deliveryId,
      @JsonKey(name: 'delivery_type') required this.deliveryType,
      @JsonKey(name: 'delivery_date') required this.deliveryDate,
      @JsonKey(name: 'payment_id') required this.paymentId,
      @JsonKey(name: 'payment_type') required this.paymentType,
      @JsonKey(name: 'address', includeIfNull: false) this.address,
      @JsonKey(name: 'comment', includeIfNull: false) this.comment,
      @JsonKey(name: 'repeated_days', includeIfNull: false) this.repeatedDays})
      : _products = products;

  factory _$_OrderRequest.fromJson(Map<String, dynamic> json) =>
      _$$_OrderRequestFromJson(json);

  @override
  @JsonKey(name: 'city_fias', includeIfNull: false)
  final String? cityFias;
  final List<ProductWithCount> _products;
  @override
  List<ProductWithCount> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey(name: 'user_name')
  final String username;
  @override
  @JsonKey(name: 'user_phone')
  final String userPhone;
  @override
  @JsonKey(name: 'user_email')
  final String userEmail;
  @override
  @JsonKey(name: 'delivery_id')
  final String deliveryId;
  @override
  @JsonKey(name: 'delivery_type')
  final String deliveryType;
  @override
  @JsonKey(name: 'delivery_date')
  final String deliveryDate;
  @override
  @JsonKey(name: 'payment_id')
  final String paymentId;
  @override
  @JsonKey(name: 'payment_type')
  final String paymentType;
  @override
  @JsonKey(name: 'address', includeIfNull: false)
  final String? address;
  @override
  @JsonKey(name: 'comment', includeIfNull: false)
  final String? comment;
  @override
  @JsonKey(name: 'repeated_days', includeIfNull: false)
  final int? repeatedDays;

  @override
  String toString() {
    return 'OrderRequest(cityFias: $cityFias, products: $products, username: $username, userPhone: $userPhone, userEmail: $userEmail, deliveryId: $deliveryId, deliveryType: $deliveryType, deliveryDate: $deliveryDate, paymentId: $paymentId, paymentType: $paymentType, address: $address, comment: $comment, repeatedDays: $repeatedDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderRequest &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.deliveryId, deliveryId) ||
                other.deliveryId == deliveryId) &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.repeatedDays, repeatedDays) ||
                other.repeatedDays == repeatedDays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cityFias,
      const DeepCollectionEquality().hash(_products),
      username,
      userPhone,
      userEmail,
      deliveryId,
      deliveryType,
      deliveryDate,
      paymentId,
      paymentType,
      address,
      comment,
      repeatedDays);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderRequestCopyWith<_$_OrderRequest> get copyWith =>
      __$$_OrderRequestCopyWithImpl<_$_OrderRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderRequestToJson(
      this,
    );
  }
}

abstract class _OrderRequest implements OrderRequest {
  factory _OrderRequest(
      {@JsonKey(name: 'city_fias', includeIfNull: false) final String? cityFias,
      required final List<ProductWithCount> products,
      @JsonKey(name: 'user_name') required final String username,
      @JsonKey(name: 'user_phone') required final String userPhone,
      @JsonKey(name: 'user_email') required final String userEmail,
      @JsonKey(name: 'delivery_id') required final String deliveryId,
      @JsonKey(name: 'delivery_type') required final String deliveryType,
      @JsonKey(name: 'delivery_date') required final String deliveryDate,
      @JsonKey(name: 'payment_id') required final String paymentId,
      @JsonKey(name: 'payment_type') required final String paymentType,
      @JsonKey(name: 'address', includeIfNull: false) final String? address,
      @JsonKey(name: 'comment', includeIfNull: false) final String? comment,
      @JsonKey(name: 'repeated_days', includeIfNull: false)
      final int? repeatedDays}) = _$_OrderRequest;

  factory _OrderRequest.fromJson(Map<String, dynamic> json) =
      _$_OrderRequest.fromJson;

  @override
  @JsonKey(name: 'city_fias', includeIfNull: false)
  String? get cityFias;
  @override
  List<ProductWithCount> get products;
  @override
  @JsonKey(name: 'user_name')
  String get username;
  @override
  @JsonKey(name: 'user_phone')
  String get userPhone;
  @override
  @JsonKey(name: 'user_email')
  String get userEmail;
  @override
  @JsonKey(name: 'delivery_id')
  String get deliveryId;
  @override
  @JsonKey(name: 'delivery_type')
  String get deliveryType;
  @override
  @JsonKey(name: 'delivery_date')
  String get deliveryDate;
  @override
  @JsonKey(name: 'payment_id')
  String get paymentId;
  @override
  @JsonKey(name: 'payment_type')
  String get paymentType;
  @override
  @JsonKey(name: 'address', includeIfNull: false)
  String? get address;
  @override
  @JsonKey(name: 'comment', includeIfNull: false)
  String? get comment;
  @override
  @JsonKey(name: 'repeated_days', includeIfNull: false)
  int? get repeatedDays;
  @override
  @JsonKey(ignore: true)
  _$$_OrderRequestCopyWith<_$_OrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
