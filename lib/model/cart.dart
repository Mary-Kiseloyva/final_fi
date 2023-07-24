import 'package:decimal/decimal.dart';
import 'package:fi/model/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
class Cart with _$Cart {
  factory Cart({
    @JsonKey(name: 'price') required Decimal price,
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'products') required List<CartProduct> products,
    @JsonKey(name: 'old_price') Decimal? oldPrice,
    @JsonKey(name: 'applied') bool? applied,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) =>
      _$CartFromJson(json);
}

@freezed
class CartProduct with _$CartProduct {
  factory CartProduct({
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'product') required Product product,
  }) = _CartProduct;

  factory CartProduct.fromJson(Map<String, dynamic> json) =>
      _$CartProductFromJson(json);
}