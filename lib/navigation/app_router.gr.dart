// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CatalogTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogTabPage(),
      );
    },
    CartTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartTabPage(),
      );
    },
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthPage(),
      );
    },
    AuthCodeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<AuthCodeRouteArgs>(
          orElse: () =>
              AuthCodeRouteArgs(email: pathParams.getString('email')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthCodePage(
          key: args.key,
          email: args.email,
        ),
      );
    },
    CartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartPage(),
      );
    },
    CatalogRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    OrderRoute.name: (routeData) {
      final args = routeData.argsAs<OrderRouteArgs>(
          orElse: () => const OrderRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderPage(
          key: args.key,
          cart: args.cart,
        ),
      );
    },
    OrderResultRoute.name: (routeData) {
      final args = routeData.argsAs<OrderResultRouteArgs>(
          orElse: () => const OrderResultRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderResultPage(
          key: args.key,
          order: args.order,
        ),
      );
    },
    ProductRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductRouteArgs>(
          orElse: () =>
              ProductRouteArgs(productId: pathParams.getInt('productId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductPage(
          key: args.key,
          productId: args.productId,
        ),
      );
    },
    RegistrationRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RegistrationRouteArgs>(
          orElse: () =>
              RegistrationRouteArgs(email: pathParams.getString('email')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RegistrationPage(
          key: args.key,
          email: args.email,
        ),
      );
    },
  };
}

/// generated route for
/// [CatalogTabPage]
class CatalogTab extends PageRouteInfo<void> {
  const CatalogTab({List<PageRouteInfo>? children})
      : super(
          CatalogTab.name,
          initialChildren: children,
        );

  static const String name = 'CatalogTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CartTabPage]
class CartTab extends PageRouteInfo<void> {
  const CartTab({List<PageRouteInfo>? children})
      : super(
          CartTab.name,
          initialChildren: children,
        );

  static const String name = 'CartTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AuthCodePage]
class AuthCodeRoute extends PageRouteInfo<AuthCodeRouteArgs> {
  AuthCodeRoute({
    Key? key,
    required String email,
    List<PageRouteInfo>? children,
  }) : super(
          AuthCodeRoute.name,
          args: AuthCodeRouteArgs(
            key: key,
            email: email,
          ),
          rawPathParams: {'email': email},
          initialChildren: children,
        );

  static const String name = 'AuthCodeRoute';

  static const PageInfo<AuthCodeRouteArgs> page =
      PageInfo<AuthCodeRouteArgs>(name);
}

class AuthCodeRouteArgs {
  const AuthCodeRouteArgs({
    this.key,
    required this.email,
  });

  final Key? key;

  final String email;

  @override
  String toString() {
    return 'AuthCodeRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [CartPage]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatalogPage]
class CatalogRoute extends PageRouteInfo<void> {
  const CatalogRoute({List<PageRouteInfo>? children})
      : super(
          CatalogRoute.name,
          initialChildren: children,
        );

  static const String name = 'CatalogRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrderPage]
class OrderRoute extends PageRouteInfo<OrderRouteArgs> {
  OrderRoute({
    Key? key,
    Cart? cart,
    List<PageRouteInfo>? children,
  }) : super(
          OrderRoute.name,
          args: OrderRouteArgs(
            key: key,
            cart: cart,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static const PageInfo<OrderRouteArgs> page = PageInfo<OrderRouteArgs>(name);
}

class OrderRouteArgs {
  const OrderRouteArgs({
    this.key,
    this.cart,
  });

  final Key? key;

  final Cart? cart;

  @override
  String toString() {
    return 'OrderRouteArgs{key: $key, cart: $cart}';
  }
}

/// generated route for
/// [OrderResultPage]
class OrderResultRoute extends PageRouteInfo<OrderResultRouteArgs> {
  OrderResultRoute({
    Key? key,
    Order? order,
    List<PageRouteInfo>? children,
  }) : super(
          OrderResultRoute.name,
          args: OrderResultRouteArgs(
            key: key,
            order: order,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderResultRoute';

  static const PageInfo<OrderResultRouteArgs> page =
      PageInfo<OrderResultRouteArgs>(name);
}

class OrderResultRouteArgs {
  const OrderResultRouteArgs({
    this.key,
    this.order,
  });

  final Key? key;

  final Order? order;

  @override
  String toString() {
    return 'OrderResultRouteArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [ProductPage]
class ProductRoute extends PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    Key? key,
    required int productId,
    List<PageRouteInfo>? children,
  }) : super(
          ProductRoute.name,
          args: ProductRouteArgs(
            key: key,
            productId: productId,
          ),
          rawPathParams: {'productId': productId},
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const PageInfo<ProductRouteArgs> page =
      PageInfo<ProductRouteArgs>(name);
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    required this.productId,
  });

  final Key? key;

  final int productId;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [RegistrationPage]
class RegistrationRoute extends PageRouteInfo<RegistrationRouteArgs> {
  RegistrationRoute({
    Key? key,
    required String email,
    List<PageRouteInfo>? children,
  }) : super(
          RegistrationRoute.name,
          args: RegistrationRouteArgs(
            key: key,
            email: email,
          ),
          rawPathParams: {'email': email},
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const PageInfo<RegistrationRouteArgs> page =
      PageInfo<RegistrationRouteArgs>(name);
}

class RegistrationRouteArgs {
  const RegistrationRouteArgs({
    this.key,
    required this.email,
  });

  final Key? key;

  final String email;

  @override
  String toString() {
    return 'RegistrationRouteArgs{key: $key, email: $email}';
  }
}
