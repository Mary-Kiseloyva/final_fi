import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fi/view/auth.dart';
import 'package:fi/view/auth_code.dart';
import 'package:fi/view/cart.dart';
import 'package:fi/view/catalog.dart';
import 'package:fi/view/order.dart';
import 'package:fi/view/order_result.dart';
import 'package:fi/view/product.dart';
import 'package:fi/view/registration.dart';
import 'package:fi/view/home.dart';

import '../model/cart.dart';
import '../model/order.dart';
import '../model/product.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthRoute.page),
        AutoRoute(page: AuthCodeRoute.page),
        AutoRoute(page: RegistrationRoute.page),
        AutoRoute(page: HomeRoute.page, initial: true, children: [
          AutoRoute(
            page: CatalogTab.page,
            initial: true,
            children: [
              AutoRoute(
                page: CatalogRoute.page,
                initial: true,
              ),
              AutoRoute(
                path: 'product/:productId',
                page: ProductRoute.page,
              ),
            ],
          ),
          AutoRoute(
            page: CartTab.page,
            children: [
              AutoRoute(
                page: CartRoute.page,
                initial: true,
              ),
              AutoRoute(
                path: 'product/:productId',
                page: ProductRoute.page,
              ),
              AutoRoute(page: OrderRoute.page),
              AutoRoute(page: OrderResultRoute.page),
            ],
          ),
        ]),
      ];
}

@RoutePage(name: 'CatalogTab')
class CatalogTabPage extends AutoRouter {
  const CatalogTabPage({super.key});
}

@RoutePage(name: 'CartTab')
class CartTabPage extends AutoRouter {
  const CartTabPage({super.key});
}
