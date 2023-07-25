import 'dart:async';
import 'dart:ui';

import 'package:fi/util/value_stream_wrapper.dart';

import '../data/repository/cart_repository.dart';
import '../data/repository/token_ropository.dart';
import '../model/cart.dart';
import '../util/app_components.dart';
import 'base_view_model.dart';

class BaseCartViewModel extends BaseViewModel {
  final CartRepository cartRepository = AppComponents().cartRepository;
  final TokenRepository tokenRepository = AppComponents().tokenRepository;
  final ValueStreamWrapper<Cart> cartController = ValueStreamWrapper();

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

  Future<Cart> addProduct(int productId) {
    return cartRepository.addProduct(productId);
  }

  Future<Cart> decreaseProduct(int productId, int count) {
    return cartRepository.decreaseProduct(productId, count);
  }

  Future<Cart> deleteProduct(int productId) {
    return cartRepository.deleteProduct(productId);
  }

  bool isLoggedIn() {
    return tokenRepository.auth;
  }

  @override
  void dispose() {
    cartRepository.removeListener(cartListener);
    cartController.dispose();
  }
}
