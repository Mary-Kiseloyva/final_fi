import 'dart:async';
import 'dart:ui';

import '../data/repository/cart_repository.dart';
import '../data/repository/token_ropository.dart';
import '../model/cart.dart';
import '../util/app_components.dart';

class BaseCartViewModel {
  final CartRepository cartRepository = AppComponents().cartRepository;
  final TokenRepository tokenRepository = AppComponents().tokenRepository;
  StreamController<Cart> cartController = StreamController.broadcast();

  late VoidCallback cartListener = () {
    cartController.add(cartRepository.cart);
  };

  void initCart() {
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

  void dispose() {
    cartRepository.removeListener(cartListener);
    cartController.close();
  }
}
