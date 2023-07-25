import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fi/navigation/app_router.dart';
import 'package:fi/util/snack_bar_util.dart';
import 'package:fi/view_model/catalog_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Все товары'),
      ),
      body: SafeArea(
        child: PaginationBuilder<Product>(
          paginationCallback: catalogViewModel.loadProducts,
          builder: (context, controller, snapshot) {
            final products = snapshot.data;
            if (products == null) {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            }
            return GridView.builder(
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
                      if (catalogViewModel.isLoggedIn())
                        {
                          catalogViewModel
                              .addProduct(product.id)
                              .then((value) => context
                                  .showSnackBar('Добавлено: ${product.name}'))
                              .catchError((error, stackTrace) =>
                                  context.showSnackBar('Ошибка'))
                        }
                      else
                        {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Внимание'),
                              content: const Text('Вы не авторизованны'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => context.router
                                      .navigate(const AuthRoute()),
                                  child: const Text('Войти'),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('Отмена'),
                                ),
                              ],
                            ),
                          )
                        }
                    },
                  ),
                );
              },
            );
          },
        ),
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
                InkWell(
                  onTap: add,
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.card_travel,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
