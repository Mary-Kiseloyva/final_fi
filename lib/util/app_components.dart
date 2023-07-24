import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fi/data/repository/cart_repository.dart';
import 'package:fi/data/service/order_service.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../data/interseptor.dart';
import '../data/repository/token_ropository.dart';
import '../data/service/auth_service.dart';
import '../data/service/cart_service.dart';
import '../data/service/catalog_service.dart';

const timeout = Duration(seconds: 30);

class AppComponents {
  static final AppComponents _instance = AppComponents._internal();

  factory AppComponents() => _instance;

  AppComponents._internal();

  final Dio dio = Dio();
  final TokenRepository tokenRepository = TokenRepository();
  late final AuthService authService = AuthService(dio);
  late final CartService cartService = CartService(dio);
  late final CatalogService catalogService = CatalogService(dio);
  late final OrderService orderService = OrderService(dio);
  late final CartRepository cartRepository = CartRepository(cartService);

  Future<void> init() async {
    dio.options
      ..baseUrl = 'https://farm.fbtw.ru/'
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..sendTimeout = timeout
      ..contentType = ContentType.json.mimeType
      ..responseType = ResponseType.json;
    dio.interceptors.add(PrettyDioLogger());

    await tokenRepository.initTokens();

    dio.interceptors.add(
      JWTInterceptor(
        repository: tokenRepository,
        dio: dio,
      ),
    );
  }
}
