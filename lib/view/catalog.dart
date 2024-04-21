import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fi/navigation/app_router.dart';
import 'package:fi/util/snack_bar_util.dart';
import 'package:fi/view_model/cart_view_model.dart';
import 'package:fi/view_model/catalog_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../model/product.dart';
import '../util/pagination_builder.dart';

@RoutePage()
class CatalogPage extends StatefulWidget {
  const CatalogPage({
    super.key,
  });

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  final CatalogViewModel catalogViewModel = CatalogViewModel();

  @override
  Widget build(BuildContext context) {
    var banners = ['assets/2.png', 'assets/2.png', 'assets/2.png'];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/sushi_logo.png',
          height: 150,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
                    height: 250,
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      itemCount: banners.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Image.asset(banners[index]);
                      },
                    ),
                  ),
            Expanded(child: TabBarExample()),
          ],
        ),
        // child: ListView(
        //   shrinkWrap: true,
        //   children: [
        //       SizedBox(
        //         height: 150,
        //         child: ListView.builder(
        //           padding: const EdgeInsets.symmetric(horizontal: 16.0),
        //           itemCount: banners.length,
        //           scrollDirection: Axis.horizontal,
        //           itemBuilder: (BuildContext context, int index) {
        //             return Image.asset(banners[index]);
        //           },
        //         ),
        //       ),
        //
        //     TabBarExample(),
        //   ],
        // ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final VoidCallback add;
  final Product product;

  const ProductCard({super.key, required this.product, required this.add});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: Column(
        children: [
          Expanded(
            child: CachedNetworkImage(
              imageUrl: product.picture,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            alignment: Alignment.bottomCenter,
            child: Text(
              product.name,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            height: 48,
            margin: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Builder(builder: (context) {
                  final price = Text('${product.price.toString()}₽');
                  if (product.oldPrice != null) {
                    return Column(children: [
                      price,
                      Text(
                        '${product.oldPrice.toString()}₽',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ]);
                  }
                  return price;
                }),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  onPressed: add,
                  child: const Text('Заказать', style: TextStyle(color: Colors.white),),
                )
                // InkWell(
                //   onTap: add,
                //   child: Container(
                //     width: 44,
                //     height: 44,
                //     decoration: const BoxDecoration(
                //       color: Colors.black,
                //       shape: BoxShape.circle,
                //     ),
                //     child: const Icon(
                //       Icons.card_travel,
                //       color: Colors.white,
                //       size: 24,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabBarExample extends StatelessWidget {
  TabBarExample({super.key});

  final CatalogViewModel catalogViewModel = CatalogViewModel();

  @override
  Widget build(BuildContext context) {
    final cartViewModel = context.read<CartViewModel>();
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Column(
        children: [
          const TabBar(
            indicatorColor: Colors.red,
            labelColor: Colors.black,
            tabs: <Widget>[
              Tab(
                text: 'Новинки',
              ),
              Tab(
                text: 'Роллы',
              ),
              Tab(
                text: 'Сеты',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                PaginationBuilder<Product>(
                  paginationCallback: catalogViewModel.loadProducts,
                  builder: (context, controller, snapshot) {
                    final products = snapshot.data;
                    if (products == null) {
                      return const Center(
                        child: CupertinoActivityIndicator(),
                      );
                    }
                    return GridView.builder(
                      //physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      controller: controller,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.3 *
                            MediaQuery.of(context).size.width /
                            MediaQuery.of(context).size.height,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return GestureDetector(
                          onTap: () {
                            context.router
                                .navigate(ProductRoute(productId: product.id));
                          },
                          child: ProductCard(
                            product: product,
                            add: () => {
                              // if (catalogViewModel.isLoggedIn())
                              //   {
                            cartViewModel.addProduct(product)
                                      .then((value) => context.showSnackBar(
                                          'Добавлено: ${product.name}'))
                                      .catchError((error, stackTrace) =>
                                          context.showSnackBar('Ошибка'))
                                //}
                              // else
                              //   {
                              //     showDialog(
                              //       context: context,
                              //       builder: (BuildContext context) =>
                              //           AlertDialog(
                              //         title: const Text('Внимание'),
                              //         content:
                              //             const Text('Вы не авторизованны'),
                              //         actions: <Widget>[
                              //           TextButton(
                              //             onPressed: () => context.router
                              //                 .navigate(const AuthRoute()),
                              //             child: const Text('Войти'),
                              //           ),
                              //           TextButton(
                              //             onPressed: () =>
                              //                 Navigator.pop(context),
                              //             child: const Text('Отмена'),
                              //           ),
                              //         ],
                              //       ),
                              //     )
                              //   }
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
                PaginationBuilder<Product>(
                  paginationCallback: catalogViewModel.loadProducts,
                  builder: (context, controller, snapshot) {
                    final products = snapshot.data;
                    if (products == null) {
                      return const Center(
                        child: CupertinoActivityIndicator(),
                      );
                    }
                    return GridView.builder(
                      shrinkWrap: true,
                      controller: controller,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.3 *
                            MediaQuery.of(context).size.width /
                            MediaQuery.of(context).size.height,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return GestureDetector(
                          onTap: () {
                            context.router
                                .navigate(ProductRoute(productId: product.id));
                          },
                          child: ProductCard(
                            product: product,
                            add: () => {
                              cartViewModel.addProduct(product)
                                  .then((value) => context.showSnackBar(
                                  'Добавлено: ${product.name}'))
                                  .catchError((error, stackTrace) =>
                                  context.showSnackBar('Ошибка'))
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
                PaginationBuilder<Product>(
                  paginationCallback: catalogViewModel.loadProducts,
                  builder: (context, controller, snapshot) {
                    final products = snapshot.data;
                    if (products == null) {
                      return const Center(
                        child: CupertinoActivityIndicator(),
                      );
                    }
                    return GridView.builder(
                      shrinkWrap: true,
                      controller: controller,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.3 *
                            MediaQuery.of(context).size.width /
                            MediaQuery.of(context).size.height,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return GestureDetector(
                          onTap: () {
                            context.router
                                .navigate(ProductRoute(productId: product.id));
                          },
                          child: ProductCard(
                            product: product,
                            add: () => {
                              cartViewModel.addProduct(product)
                                  .then((value) => context.showSnackBar(
                                  'Добавлено: ${product.name}'))
                                  .catchError((error, stackTrace) =>
                                  context.showSnackBar('Ошибка'))
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
