import 'dart:async';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../model/cart.dart';
import '../entity/cart/cart_load.dart';
import '../entity/cart/cart_update.dart';

part 'cart_service.g.dart';

@RestApi()
abstract class CartService {
  factory CartService(Dio dio, {String baseUrl}) = _CartService;

  @POST('/cart/calculate/')
  Future<Cart> loadCart({
    @Body() required CartLoad request,
  });

  @POST('/cart/cart/')
  Future<Cart> postCart({
    @Body() required CartUpdate request,
  });

  @PUT('/cart/cart/')
  Future<Cart> putCart({
    @Body() required CartUpdate request,
  });

  @DELETE('/cart/cart/')
  Future<Cart> deleteCart({
    @Body() required CartUpdate request,
  });
}
