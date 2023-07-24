import 'package:fi/data/service/cart_service.dart';
import 'package:fi/model/cart.dart';
import 'package:flutter/material.dart';

import '../../util/constants_utils.dart';
import '../../util/request_utils.dart';
import '../entity/cart/cart_load.dart';
import '../entity/cart/cart_update.dart';

class CartRepository extends ChangeNotifier {
  final CartService cartService;

  CartRepository(this.cartService);

  Cart get cart => _cart!;

  Cart? get cartOrNull => _cart;

  Cart? _cart;

  Future<Cart> loadCart() async {
    final future = RequestUtils().executeRequest(() {
      return cartService.loadCart(
        request: CartLoad(
          cityFias: ConstantsUtils.cityFias,
        ),
      );
    });
    _addFutureValue(future);
    return future;
  }

  Future<Cart> addProduct(int productId) async {
    final future = RequestUtils().executeRequest(() {
      return cartService.postCart(
        request: CartUpdate(
          productId: productId,
          cityFias: ConstantsUtils.cityFias,
        ),
      );
    });
    _addFutureValue(future);
    return future;
  }

  Future<Cart> decreaseProduct(int productId, int count) async {
    final future = RequestUtils().executeRequest(() {
      return cartService.putCart(
        request: CartUpdate(
          productId: productId,
          cityFias: ConstantsUtils.cityFias,
          count: count - 1,
        ),
      );
    });
    _addFutureValue(future);
    return future;
  }

  Future<Cart> deleteProduct(int productId) async {
    final future = RequestUtils().executeRequest(() {
      return cartService.deleteCart(
        request: CartUpdate(
          productId: productId,
          cityFias: ConstantsUtils.cityFias,
        ),
      );
    });
    _addFutureValue(future);
    return future;
  }

  void _addFutureValue(Future<Cart> future) {
    future.then((value) {
      _cart = value;
      notifyListeners();
    });
  }
}
