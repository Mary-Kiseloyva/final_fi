// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  @JsonKey(name: 'price')
  Decimal get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  List<CartProduct> get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_price')
  Decimal? get oldPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'applied')
  bool? get applied => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call(
      {@JsonKey(name: 'price') Decimal price,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'products') List<CartProduct> products,
      @JsonKey(name: 'old_price') Decimal? oldPrice,
      @JsonKey(name: 'applied') bool? applied});
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? count = null,
    Object? products = null,
    Object? oldPrice = freezed,
    Object? applied = freezed,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      applied: freezed == applied
          ? _value.applied
          : applied // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$_CartCopyWith(_$_Cart value, $Res Function(_$_Cart) then) =
      __$$_CartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'price') Decimal price,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'products') List<CartProduct> products,
      @JsonKey(name: 'old_price') Decimal? oldPrice,
      @JsonKey(name: 'applied') bool? applied});
}

/// @nodoc
class __$$_CartCopyWithImpl<$Res> extends _$CartCopyWithImpl<$Res, _$_Cart>
    implements _$$_CartCopyWith<$Res> {
  __$$_CartCopyWithImpl(_$_Cart _value, $Res Function(_$_Cart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? count = null,
    Object? products = null,
    Object? oldPrice = freezed,
    Object? applied = freezed,
  }) {
    return _then(_$_Cart(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      applied: freezed == applied
          ? _value.applied
          : applied // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cart implements _Cart {
  _$_Cart(
      {@JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'count') required this.count,
      @JsonKey(name: 'products') required final List<CartProduct> products,
      @JsonKey(name: 'old_price') this.oldPrice,
      @JsonKey(name: 'applied') this.applied})
      : _products = products;

  factory _$_Cart.fromJson(Map<String, dynamic> json) => _$$_CartFromJson(json);

  @override
  @JsonKey(name: 'price')
  final Decimal price;
  @override
  @JsonKey(name: 'count')
  final int count;
  final List<CartProduct> _products;
  @override
  @JsonKey(name: 'products')
  List<CartProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey(name: 'old_price')
  final Decimal? oldPrice;
  @override
  @JsonKey(name: 'applied')
  final bool? applied;

  @override
  String toString() {
    return 'Cart(price: $price, count: $count, products: $products, oldPrice: $oldPrice, applied: $applied)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cart &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.applied, applied) || other.applied == applied));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price, count,
      const DeepCollectionEquality().hash(_products), oldPrice, applied);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartCopyWith<_$_Cart> get copyWith =>
      __$$_CartCopyWithImpl<_$_Cart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartToJson(
      this,
    );
  }
}

abstract class _Cart implements Cart {
  factory _Cart(
      {@JsonKey(name: 'price') required final Decimal price,
      @JsonKey(name: 'count') required final int count,
      @JsonKey(name: 'products') required final List<CartProduct> products,
      @JsonKey(name: 'old_price') final Decimal? oldPrice,
      @JsonKey(name: 'applied') final bool? applied}) = _$_Cart;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$_Cart.fromJson;

  @override
  @JsonKey(name: 'price')
  Decimal get price;
  @override
  @JsonKey(name: 'count')
  int get count;
  @override
  @JsonKey(name: 'products')
  List<CartProduct> get products;
  @override
  @JsonKey(name: 'old_price')
  Decimal? get oldPrice;
  @override
  @JsonKey(name: 'applied')
  bool? get applied;
  @override
  @JsonKey(ignore: true)
  _$$_CartCopyWith<_$_Cart> get copyWith => throw _privateConstructorUsedError;
}

CartProduct _$CartProductFromJson(Map<String, dynamic> json) {
  return _CartProduct.fromJson(json);
}

/// @nodoc
mixin _$CartProduct {
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'product')
  Product get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductCopyWith<CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductCopyWith<$Res> {
  factory $CartProductCopyWith(
          CartProduct value, $Res Function(CartProduct) then) =
      _$CartProductCopyWithImpl<$Res, CartProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'product') Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$CartProductCopyWithImpl<$Res, $Val extends CartProduct>
    implements $CartProductCopyWith<$Res> {
  _$CartProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartProductCopyWith<$Res>
    implements $CartProductCopyWith<$Res> {
  factory _$$_CartProductCopyWith(
          _$_CartProduct value, $Res Function(_$_CartProduct) then) =
      __$$_CartProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int count,
      @JsonKey(name: 'product') Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_CartProductCopyWithImpl<$Res>
    extends _$CartProductCopyWithImpl<$Res, _$_CartProduct>
    implements _$$_CartProductCopyWith<$Res> {
  __$$_CartProductCopyWithImpl(
      _$_CartProduct _value, $Res Function(_$_CartProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? product = null,
  }) {
    return _then(_$_CartProduct(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartProduct implements _CartProduct {
  _$_CartProduct(
      {@JsonKey(name: 'count') required this.count,
      @JsonKey(name: 'product') required this.product});

  factory _$_CartProduct.fromJson(Map<String, dynamic> json) =>
      _$$_CartProductFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'product')
  final Product product;

  @override
  String toString() {
    return 'CartProduct(count: $count, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartProduct &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartProductCopyWith<_$_CartProduct> get copyWith =>
      __$$_CartProductCopyWithImpl<_$_CartProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartProductToJson(
      this,
    );
  }
}

abstract class _CartProduct implements CartProduct {
  factory _CartProduct(
          {@JsonKey(name: 'count') required final int count,
          @JsonKey(name: 'product') required final Product product}) =
      _$_CartProduct;

  factory _CartProduct.fromJson(Map<String, dynamic> json) =
      _$_CartProduct.fromJson;

  @override
  @JsonKey(name: 'count')
  int get count;
  @override
  @JsonKey(name: 'product')
  Product get product;
  @override
  @JsonKey(ignore: true)
  _$$_CartProductCopyWith<_$_CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
