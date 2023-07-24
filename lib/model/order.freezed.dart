// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<OrderItem> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_phone')
  String get userPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_email')
  String get userEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_id')
  String get deliveryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_type')
  String get deliveryType => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_price')
  int? get deliveryPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_date')
  String? get deliveryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_time')
  String? get deliveryTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_id')
  String get paymentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type')
  String get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'items_price')
  Decimal get itemsPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  int? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_price')
  Decimal? get fullPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'promocode')
  String? get promocode => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_text')
  String? get errorText => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand')
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'repeated_days')
  int? get repeatedDays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'items') List<OrderItem> items,
      @JsonKey(name: 'user_name') String username,
      @JsonKey(name: 'user_phone') String userPhone,
      @JsonKey(name: 'user_email') String userEmail,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'delivery_id') String deliveryId,
      @JsonKey(name: 'delivery_type') String deliveryType,
      @JsonKey(name: 'delivery_price') int? deliveryPrice,
      @JsonKey(name: 'delivery_date') String? deliveryDate,
      @JsonKey(name: 'delivery_time') String? deliveryTime,
      @JsonKey(name: 'payment_id') String paymentId,
      @JsonKey(name: 'payment_type') String paymentType,
      @JsonKey(name: 'items_price') Decimal itemsPrice,
      @JsonKey(name: 'discount') int? discount,
      @JsonKey(name: 'full_price') Decimal? fullPrice,
      @JsonKey(name: 'promocode') String? promocode,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'error_text') String? errorText,
      @JsonKey(name: 'brand') String? brand,
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'repeated_days') int? repeatedDays});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? items = null,
    Object? username = null,
    Object? userPhone = null,
    Object? userEmail = null,
    Object? createdAt = freezed,
    Object? deliveryId = null,
    Object? deliveryType = null,
    Object? deliveryPrice = freezed,
    Object? deliveryDate = freezed,
    Object? deliveryTime = freezed,
    Object? paymentId = null,
    Object? paymentType = null,
    Object? itemsPrice = null,
    Object? discount = freezed,
    Object? fullPrice = freezed,
    Object? promocode = freezed,
    Object? address = freezed,
    Object? comment = freezed,
    Object? errorText = freezed,
    Object? brand = freezed,
    Object? status = freezed,
    Object? repeatedDays = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryId: null == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryPrice: freezed == deliveryPrice
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTime: freezed == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      itemsPrice: null == itemsPrice
          ? _value.itemsPrice
          : itemsPrice // ignore: cast_nullable_to_non_nullable
              as Decimal,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      fullPrice: freezed == fullPrice
          ? _value.fullPrice
          : fullPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      repeatedDays: freezed == repeatedDays
          ? _value.repeatedDays
          : repeatedDays // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'items') List<OrderItem> items,
      @JsonKey(name: 'user_name') String username,
      @JsonKey(name: 'user_phone') String userPhone,
      @JsonKey(name: 'user_email') String userEmail,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'delivery_id') String deliveryId,
      @JsonKey(name: 'delivery_type') String deliveryType,
      @JsonKey(name: 'delivery_price') int? deliveryPrice,
      @JsonKey(name: 'delivery_date') String? deliveryDate,
      @JsonKey(name: 'delivery_time') String? deliveryTime,
      @JsonKey(name: 'payment_id') String paymentId,
      @JsonKey(name: 'payment_type') String paymentType,
      @JsonKey(name: 'items_price') Decimal itemsPrice,
      @JsonKey(name: 'discount') int? discount,
      @JsonKey(name: 'full_price') Decimal? fullPrice,
      @JsonKey(name: 'promocode') String? promocode,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'error_text') String? errorText,
      @JsonKey(name: 'brand') String? brand,
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'repeated_days') int? repeatedDays});
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? items = null,
    Object? username = null,
    Object? userPhone = null,
    Object? userEmail = null,
    Object? createdAt = freezed,
    Object? deliveryId = null,
    Object? deliveryType = null,
    Object? deliveryPrice = freezed,
    Object? deliveryDate = freezed,
    Object? deliveryTime = freezed,
    Object? paymentId = null,
    Object? paymentType = null,
    Object? itemsPrice = null,
    Object? discount = freezed,
    Object? fullPrice = freezed,
    Object? promocode = freezed,
    Object? address = freezed,
    Object? comment = freezed,
    Object? errorText = freezed,
    Object? brand = freezed,
    Object? status = freezed,
    Object? repeatedDays = freezed,
  }) {
    return _then(_$_Order(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryId: null == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryPrice: freezed == deliveryPrice
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTime: freezed == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      itemsPrice: null == itemsPrice
          ? _value.itemsPrice
          : itemsPrice // ignore: cast_nullable_to_non_nullable
              as Decimal,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      fullPrice: freezed == fullPrice
          ? _value.fullPrice
          : fullPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      repeatedDays: freezed == repeatedDays
          ? _value.repeatedDays
          : repeatedDays // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order implements _Order {
  _$_Order(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'items') required final List<OrderItem> items,
      @JsonKey(name: 'user_name') required this.username,
      @JsonKey(name: 'user_phone') required this.userPhone,
      @JsonKey(name: 'user_email') required this.userEmail,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'delivery_id') required this.deliveryId,
      @JsonKey(name: 'delivery_type') required this.deliveryType,
      @JsonKey(name: 'delivery_price') this.deliveryPrice,
      @JsonKey(name: 'delivery_date') this.deliveryDate,
      @JsonKey(name: 'delivery_time') this.deliveryTime,
      @JsonKey(name: 'payment_id') required this.paymentId,
      @JsonKey(name: 'payment_type') required this.paymentType,
      @JsonKey(name: 'items_price') required this.itemsPrice,
      @JsonKey(name: 'discount') this.discount,
      @JsonKey(name: 'full_price') this.fullPrice,
      @JsonKey(name: 'promocode') this.promocode,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'comment') this.comment,
      @JsonKey(name: 'error_text') this.errorText,
      @JsonKey(name: 'brand') this.brand,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'repeated_days') this.repeatedDays})
      : _items = items;

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  final List<OrderItem> _items;
  @override
  @JsonKey(name: 'items')
  List<OrderItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
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
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'delivery_id')
  final String deliveryId;
  @override
  @JsonKey(name: 'delivery_type')
  final String deliveryType;
  @override
  @JsonKey(name: 'delivery_price')
  final int? deliveryPrice;
  @override
  @JsonKey(name: 'delivery_date')
  final String? deliveryDate;
  @override
  @JsonKey(name: 'delivery_time')
  final String? deliveryTime;
  @override
  @JsonKey(name: 'payment_id')
  final String paymentId;
  @override
  @JsonKey(name: 'payment_type')
  final String paymentType;
  @override
  @JsonKey(name: 'items_price')
  final Decimal itemsPrice;
  @override
  @JsonKey(name: 'discount')
  final int? discount;
  @override
  @JsonKey(name: 'full_price')
  final Decimal? fullPrice;
  @override
  @JsonKey(name: 'promocode')
  final String? promocode;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'comment')
  final String? comment;
  @override
  @JsonKey(name: 'error_text')
  final String? errorText;
  @override
  @JsonKey(name: 'brand')
  final String? brand;
  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'repeated_days')
  final int? repeatedDays;

  @override
  String toString() {
    return 'Order(id: $id, items: $items, username: $username, userPhone: $userPhone, userEmail: $userEmail, createdAt: $createdAt, deliveryId: $deliveryId, deliveryType: $deliveryType, deliveryPrice: $deliveryPrice, deliveryDate: $deliveryDate, deliveryTime: $deliveryTime, paymentId: $paymentId, paymentType: $paymentType, itemsPrice: $itemsPrice, discount: $discount, fullPrice: $fullPrice, promocode: $promocode, address: $address, comment: $comment, errorText: $errorText, brand: $brand, status: $status, repeatedDays: $repeatedDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.deliveryId, deliveryId) ||
                other.deliveryId == deliveryId) &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.deliveryPrice, deliveryPrice) ||
                other.deliveryPrice == deliveryPrice) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.deliveryTime, deliveryTime) ||
                other.deliveryTime == deliveryTime) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.itemsPrice, itemsPrice) ||
                other.itemsPrice == itemsPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.fullPrice, fullPrice) ||
                other.fullPrice == fullPrice) &&
            (identical(other.promocode, promocode) ||
                other.promocode == promocode) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.repeatedDays, repeatedDays) ||
                other.repeatedDays == repeatedDays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_items),
        username,
        userPhone,
        userEmail,
        createdAt,
        deliveryId,
        deliveryType,
        deliveryPrice,
        deliveryDate,
        deliveryTime,
        paymentId,
        paymentType,
        itemsPrice,
        discount,
        fullPrice,
        promocode,
        address,
        comment,
        errorText,
        brand,
        status,
        repeatedDays
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  factory _Order(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'items') required final List<OrderItem> items,
      @JsonKey(name: 'user_name') required final String username,
      @JsonKey(name: 'user_phone') required final String userPhone,
      @JsonKey(name: 'user_email') required final String userEmail,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'delivery_id') required final String deliveryId,
      @JsonKey(name: 'delivery_type') required final String deliveryType,
      @JsonKey(name: 'delivery_price') final int? deliveryPrice,
      @JsonKey(name: 'delivery_date') final String? deliveryDate,
      @JsonKey(name: 'delivery_time') final String? deliveryTime,
      @JsonKey(name: 'payment_id') required final String paymentId,
      @JsonKey(name: 'payment_type') required final String paymentType,
      @JsonKey(name: 'items_price') required final Decimal itemsPrice,
      @JsonKey(name: 'discount') final int? discount,
      @JsonKey(name: 'full_price') final Decimal? fullPrice,
      @JsonKey(name: 'promocode') final String? promocode,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'comment') final String? comment,
      @JsonKey(name: 'error_text') final String? errorText,
      @JsonKey(name: 'brand') final String? brand,
      @JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'repeated_days') final int? repeatedDays}) = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'items')
  List<OrderItem> get items;
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
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'delivery_id')
  String get deliveryId;
  @override
  @JsonKey(name: 'delivery_type')
  String get deliveryType;
  @override
  @JsonKey(name: 'delivery_price')
  int? get deliveryPrice;
  @override
  @JsonKey(name: 'delivery_date')
  String? get deliveryDate;
  @override
  @JsonKey(name: 'delivery_time')
  String? get deliveryTime;
  @override
  @JsonKey(name: 'payment_id')
  String get paymentId;
  @override
  @JsonKey(name: 'payment_type')
  String get paymentType;
  @override
  @JsonKey(name: 'items_price')
  Decimal get itemsPrice;
  @override
  @JsonKey(name: 'discount')
  int? get discount;
  @override
  @JsonKey(name: 'full_price')
  Decimal? get fullPrice;
  @override
  @JsonKey(name: 'promocode')
  String? get promocode;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'comment')
  String? get comment;
  @override
  @JsonKey(name: 'error_text')
  String? get errorText;
  @override
  @JsonKey(name: 'brand')
  String? get brand;
  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'repeated_days')
  int? get repeatedDays;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return _OrderItem.fromJson(json);
}

/// @nodoc
mixin _$OrderItem {
  int? get id => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Decimal get price => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  int? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call(
      {int? id,
      int count,
      String picture,
      String name,
      Decimal price,
      int? discount,
      int? order,
      int? product});
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? count = null,
    Object? picture = null,
    Object? name = null,
    Object? price = null,
    Object? discount = freezed,
    Object? order = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderItemCopyWith<$Res> implements $OrderItemCopyWith<$Res> {
  factory _$$_OrderItemCopyWith(
          _$_OrderItem value, $Res Function(_$_OrderItem) then) =
      __$$_OrderItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int count,
      String picture,
      String name,
      Decimal price,
      int? discount,
      int? order,
      int? product});
}

/// @nodoc
class __$$_OrderItemCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$_OrderItem>
    implements _$$_OrderItemCopyWith<$Res> {
  __$$_OrderItemCopyWithImpl(
      _$_OrderItem _value, $Res Function(_$_OrderItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? count = null,
    Object? picture = null,
    Object? name = null,
    Object? price = null,
    Object? discount = freezed,
    Object? order = freezed,
    Object? product = freezed,
  }) {
    return _then(_$_OrderItem(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderItem implements _OrderItem {
  _$_OrderItem(
      {this.id,
      required this.count,
      required this.picture,
      required this.name,
      required this.price,
      this.discount,
      this.order,
      this.product});

  factory _$_OrderItem.fromJson(Map<String, dynamic> json) =>
      _$$_OrderItemFromJson(json);

  @override
  final int? id;
  @override
  final int count;
  @override
  final String picture;
  @override
  final String name;
  @override
  final Decimal price;
  @override
  final int? discount;
  @override
  final int? order;
  @override
  final int? product;

  @override
  String toString() {
    return 'OrderItem(id: $id, count: $count, picture: $picture, name: $name, price: $price, discount: $discount, order: $order, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, count, picture, name, price, discount, order, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderItemCopyWith<_$_OrderItem> get copyWith =>
      __$$_OrderItemCopyWithImpl<_$_OrderItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderItemToJson(
      this,
    );
  }
}

abstract class _OrderItem implements OrderItem {
  factory _OrderItem(
      {final int? id,
      required final int count,
      required final String picture,
      required final String name,
      required final Decimal price,
      final int? discount,
      final int? order,
      final int? product}) = _$_OrderItem;

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$_OrderItem.fromJson;

  @override
  int? get id;
  @override
  int get count;
  @override
  String get picture;
  @override
  String get name;
  @override
  Decimal get price;
  @override
  int? get discount;
  @override
  int? get order;
  @override
  int? get product;
  @override
  @JsonKey(ignore: true)
  _$$_OrderItemCopyWith<_$_OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}
