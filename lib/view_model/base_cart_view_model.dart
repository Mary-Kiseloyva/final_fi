import 'dart:async';
import 'dart:ui';

import 'package:decimal/decimal.dart';
import 'package:fi/model/product.dart';
import 'package:fi/model/product_details.dart';
import 'package:fi/util/value_stream_wrapper.dart';
import 'package:rxdart/rxdart.dart';

import '../data/repository/cart_repository.dart';
import '../data/repository/token_ropository.dart';
import '../model/cart.dart';
import '../util/app_components.dart';
import 'base_view_model.dart';

class BaseCartViewModel extends BaseViewModel {
  final CartRepository cartRepository = AppComponents().cartRepository;
  final TokenRepository tokenRepository = AppComponents().tokenRepository;
  final BehaviorSubject<Cart> cartController = BehaviorSubject.seeded(Cart(price: Decimal.parse('0'), count: 0, products: []));

  late VoidCallback cartListener = () {
    cartController.add(cartRepository.cart);
  };

  @override
  void init() {
    cartRepository.addListener(cartListener);
  }

  Future<Cart> loadCart() {
    return cartRepository.loadCart();
  }

  Future<Cart> addProduct(Product product) async {
    final cart = cartController.value;
    for(int i = 0; i < cart.products.length; i++){
      if (cart.products[i].product.id == product.id){
        final products = [...cart.products];
        final cartProduct = cart.products[i];
        final newCartProduct = cartProduct.copyWith(count: cartProduct.count+1);
        products[i] = newCartProduct;
        cartController.add(cart.copyWith(products: products));
        return cart;
      }
    }
    final products = [...cart.products, CartProduct(count: 1, product: product)];
    cartController.add(cart.copyWith(products: products));
    return cart;
    //return cartRepository.addProduct();
  }

  Future<Cart> addProduct2(ProductDetails productDetails) async {
    final cart = cartController.value;
    for(int i = 0; i < cart.products.length; i++){
      if (cart.products[i].product.id == productDetails.id){
        final products = [...cart.products];
        final cartProduct = cart.products[i];
        final newCartProduct = cartProduct.copyWith(count: cartProduct.count+1);
        products[i] = newCartProduct;
        cartController.add(cart.copyWith(products: products));
        return cart;
      }
    }
    final products = [...cart.products, CartProduct(count: 1, product: Product(id: productDetails.id, picture: productDetails.picture, badges: productDetails.badges, price: productDetails.price, name: productDetails.name))];
    cartController.add(cart.copyWith(products: products));
    return cart;
    //return cartRepository.addProduct();
  }
  Future<Cart> decreaseProduct(Product product, int count) async{
    final cart = cartController.value;
    for(int i = 0; i < cart.products.length; i++){
      if (cart.products[i].product.id == product.id){
        final products = [...cart.products];
        final cartProduct = cart.products[i];
        final newCartProduct = cartProduct.copyWith(count: cartProduct.count-1);
        products[i] = newCartProduct;
        cartController.add(cart.copyWith(products: products));
        return cart;
      }
    }
    return cart;
    //return cartRepository.decreaseProduct(productId, count);
  }

  Future<Cart> deleteProduct(int productId) async {
    final cart = cartController.value;
    for(int i = 0; i < cart.products.length; i++){
      if (cart.products[i].product.id == productId){
        final products = [...cart.products];
        products.removeAt(i);
        cartController.add(cart.copyWith(products: products));
        return cart;
      }
    }
    return cart;
    //return cartRepository.deleteProduct(productId);
  }

  bool isLoggedIn() {
    return tokenRepository.auth;
  }

  @override
  void dispose() {
    cartRepository.removeListener(cartListener);
    cartController.close();
  }
}
