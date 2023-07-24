// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDetails _$ProductDetailsFromJson(Map<String, dynamic> json) {
  return _ProductDetails.fromJson(json);
}

/// @nodoc
mixin _$ProductDetails {
  int get id => throw _privateConstructorUsedError;
  Decimal get price => throw _privateConstructorUsedError;
  List<Badge> get badges => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  String? get article => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_price')
  Decimal? get oldPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews_count')
  int? get reviewsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_fias')
  String? get cityFias => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsCopyWith<ProductDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsCopyWith<$Res> {
  factory $ProductDetailsCopyWith(
          ProductDetails value, $Res Function(ProductDetails) then) =
      _$ProductDetailsCopyWithImpl<$Res, ProductDetails>;
  @useResult
  $Res call(
      {int id,
      Decimal price,
      List<Badge> badges,
      String name,
      String? brand,
      String picture,
      String? article,
      String? description,
      bool? available,
      double? rating,
      @JsonKey(name: 'old_price') Decimal? oldPrice,
      @JsonKey(name: 'reviews_count') int? reviewsCount,
      @JsonKey(name: 'city_fias') String? cityFias});
}

/// @nodoc
class _$ProductDetailsCopyWithImpl<$Res, $Val extends ProductDetails>
    implements $ProductDetailsCopyWith<$Res> {
  _$ProductDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? badges = null,
    Object? name = null,
    Object? brand = freezed,
    Object? picture = null,
    Object? article = freezed,
    Object? description = freezed,
    Object? available = freezed,
    Object? rating = freezed,
    Object? oldPrice = freezed,
    Object? reviewsCount = freezed,
    Object? cityFias = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
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
abstract class _$$_ProductDetailsCopyWith<$Res>
    implements $ProductDetailsCopyWith<$Res> {
  factory _$$_ProductDetailsCopyWith(
          _$_ProductDetails value, $Res Function(_$_ProductDetails) then) =
      __$$_ProductDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Decimal price,
      List<Badge> badges,
      String name,
      String? brand,
      String picture,
      String? article,
      String? description,
      bool? available,
      double? rating,
      @JsonKey(name: 'old_price') Decimal? oldPrice,
      @JsonKey(name: 'reviews_count') int? reviewsCount,
      @JsonKey(name: 'city_fias') String? cityFias});
}

/// @nodoc
class __$$_ProductDetailsCopyWithImpl<$Res>
    extends _$ProductDetailsCopyWithImpl<$Res, _$_ProductDetails>
    implements _$$_ProductDetailsCopyWith<$Res> {
  __$$_ProductDetailsCopyWithImpl(
      _$_ProductDetails _value, $Res Function(_$_ProductDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? badges = null,
    Object? name = null,
    Object? brand = freezed,
    Object? picture = null,
    Object? article = freezed,
    Object? description = freezed,
    Object? available = freezed,
    Object? rating = freezed,
    Object? oldPrice = freezed,
    Object? reviewsCount = freezed,
    Object? cityFias = freezed,
  }) {
    return _then(_$_ProductDetails(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      badges: null == badges
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as Decimal?,
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_ProductDetails implements _ProductDetails {
  const _$_ProductDetails(
      {required this.id,
      required this.price,
      required final List<Badge> badges,
      required this.name,
      this.brand,
      required this.picture,
      this.article,
      this.description,
      this.available,
      this.rating,
      @JsonKey(name: 'old_price') this.oldPrice,
      @JsonKey(name: 'reviews_count') this.reviewsCount,
      @JsonKey(name: 'city_fias') this.cityFias})
      : _badges = badges;

  factory _$_ProductDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailsFromJson(json);

  @override
  final int id;
  @override
  final Decimal price;
  final List<Badge> _badges;
  @override
  List<Badge> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  final String name;
  @override
  final String? brand;
  @override
  final String picture;
  @override
  final String? article;
  @override
  final String? description;
  @override
  final bool? available;
  @override
  final double? rating;
  @override
  @JsonKey(name: 'old_price')
  final Decimal? oldPrice;
  @override
  @JsonKey(name: 'reviews_count')
  final int? reviewsCount;
  @override
  @JsonKey(name: 'city_fias')
  final String? cityFias;

  @override
  String toString() {
    return 'ProductDetails(id: $id, price: $price, badges: $badges, name: $name, brand: $brand, picture: $picture, article: $article, description: $description, available: $available, rating: $rating, oldPrice: $oldPrice, reviewsCount: $reviewsCount, cityFias: $cityFias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetails &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._badges, _badges) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
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
      price,
      const DeepCollectionEquality().hash(_badges),
      name,
      brand,
      picture,
      article,
      description,
      available,
      rating,
      oldPrice,
      reviewsCount,
      cityFias);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailsCopyWith<_$_ProductDetails> get copyWith =>
      __$$_ProductDetailsCopyWithImpl<_$_ProductDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailsToJson(
      this,
    );
  }
}

abstract class _ProductDetails implements ProductDetails {
  const factory _ProductDetails(
      {required final int id,
      required final Decimal price,
      required final List<Badge> badges,
      required final String name,
      final String? brand,
      required final String picture,
      final String? article,
      final String? description,
      final bool? available,
      final double? rating,
      @JsonKey(name: 'old_price') final Decimal? oldPrice,
      @JsonKey(name: 'reviews_count') final int? reviewsCount,
      @JsonKey(name: 'city_fias') final String? cityFias}) = _$_ProductDetails;

  factory _ProductDetails.fromJson(Map<String, dynamic> json) =
      _$_ProductDetails.fromJson;

  @override
  int get id;
  @override
  Decimal get price;
  @override
  List<Badge> get badges;
  @override
  String get name;
  @override
  String? get brand;
  @override
  String get picture;
  @override
  String? get article;
  @override
  String? get description;
  @override
  bool? get available;
  @override
  double? get rating;
  @override
  @JsonKey(name: 'old_price')
  Decimal? get oldPrice;
  @override
  @JsonKey(name: 'reviews_count')
  int? get reviewsCount;
  @override
  @JsonKey(name: 'city_fias')
  String? get cityFias;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailsCopyWith<_$_ProductDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
