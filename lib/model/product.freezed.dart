// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "picture")
  String get picture => throw _privateConstructorUsedError;
  @JsonKey(name: "badges")
  List<Badge> get badges => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  Decimal get price => throw _privateConstructorUsedError;
  @JsonKey(name: "old_price")
  Decimal? get oldPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "article")
  String? get article => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "reviews_count")
  int? get reviewsCount => throw _privateConstructorUsedError;
  @JsonKey(name: "city_fias")
  String? get cityFias => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "picture") String picture,
      @JsonKey(name: "badges") List<Badge> badges,
      @JsonKey(name: "price") Decimal price,
      @JsonKey(name: "old_price") Decimal? oldPrice,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "article") String? article,
      @JsonKey(name: "rating") double? rating,
      @JsonKey(name: "reviews_count") int? reviewsCount,
      @JsonKey(name: "city_fias") String? cityFias});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? picture = null,
    Object? badges = null,
    Object? price = null,
    Object? oldPrice = freezed,
    Object? name = null,
    Object? article = freezed,
    Object? rating = freezed,
    Object? reviewsCount = freezed,
    Object? cityFias = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "picture") String picture,
      @JsonKey(name: "badges") List<Badge> badges,
      @JsonKey(name: "price") Decimal price,
      @JsonKey(name: "old_price") Decimal? oldPrice,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "article") String? article,
      @JsonKey(name: "rating") double? rating,
      @JsonKey(name: "reviews_count") int? reviewsCount,
      @JsonKey(name: "city_fias") String? cityFias});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? picture = null,
    Object? badges = null,
    Object? price = null,
    Object? oldPrice = freezed,
    Object? name = null,
    Object? article = freezed,
    Object? rating = freezed,
    Object? reviewsCount = freezed,
    Object? cityFias = freezed,
  }) {
    return _then(_$_Product(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      badges: null == badges
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "picture") required this.picture,
      @JsonKey(name: "badges") required final List<Badge> badges,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "old_price") this.oldPrice,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "article") this.article,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "reviews_count") this.reviewsCount,
      @JsonKey(name: "city_fias") this.cityFias})
      : _badges = badges;

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "picture")
  final String picture;
  final List<Badge> _badges;
  @override
  @JsonKey(name: "badges")
  List<Badge> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  @JsonKey(name: "price")
  final Decimal price;
  @override
  @JsonKey(name: "old_price")
  final Decimal? oldPrice;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "article")
  final String? article;
  @override
  @JsonKey(name: "rating")
  final double? rating;
  @override
  @JsonKey(name: "reviews_count")
  final int? reviewsCount;
  @override
  @JsonKey(name: "city_fias")
  final String? cityFias;

  @override
  String toString() {
    return 'Product(id: $id, picture: $picture, badges: $badges, price: $price, oldPrice: $oldPrice, name: $name, article: $article, rating: $rating, reviewsCount: $reviewsCount, cityFias: $cityFias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            const DeepCollectionEquality().equals(other._badges, _badges) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      picture,
      const DeepCollectionEquality().hash(_badges),
      price,
      oldPrice,
      name,
      article,
      rating,
      reviewsCount,
      cityFias);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "picture") required final String picture,
      @JsonKey(name: "badges") required final List<Badge> badges,
      @JsonKey(name: "price") required final Decimal price,
      @JsonKey(name: "old_price") final Decimal? oldPrice,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "article") final String? article,
      @JsonKey(name: "rating") final double? rating,
      @JsonKey(name: "reviews_count") final int? reviewsCount,
      @JsonKey(name: "city_fias") final String? cityFias}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "picture")
  String get picture;
  @override
  @JsonKey(name: "badges")
  List<Badge> get badges;
  @override
  @JsonKey(name: "price")
  Decimal get price;
  @override
  @JsonKey(name: "old_price")
  Decimal? get oldPrice;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "article")
  String? get article;
  @override
  @JsonKey(name: "rating")
  double? get rating;
  @override
  @JsonKey(name: "reviews_count")
  int? get reviewsCount;
  @override
  @JsonKey(name: "city_fias")
  String? get cityFias;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
