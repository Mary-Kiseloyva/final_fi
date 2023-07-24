import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fi/navigation/app_router.dart';
import 'package:fi/view_model/cart_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/cart.dart';

@RoutePage()
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final CartViewModel cartViewModel = CartViewModel();


  @override
  void initState() {
    super.initState();
    cartViewModel.initCart();
    cartViewModel.loadCart();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Корзина'),
      ),
      body: SafeArea(
        child: Builder(builder: (context) {
          if (!cartViewModel.isLoggedIn()) {
            return Center(
              child: OutlinedButton(
                onPressed: () {
                  context.router.navigate(const AuthRoute());
                },
                child: const Text("Войти / Зарегистрироваться"),
              ),
            );
          }
          return StreamBuilder<Cart>(
            stream: cartViewModel.cartController.stream,
            builder: (context, snapshot) {
              final cart = snapshot.data;
              if (cart == null) {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }
              if (cart.products.isEmpty) {
                return SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('В вашей корзине пока ничего нет'),
                      OutlinedButton(
                          onPressed: () {
                            context.router.navigate(const CatalogTab());
                          },
                          child: const Text('Перейти к покупкам')),
                    ],
                  ),
                );
              }
              return Stack(
                children: [
                  ListView.builder(
                    itemCount: cart.products.length,
                    itemBuilder: (context, index) {
                      final product = cart.products[index];
                      return ProductCard(
                        cartProduct: product,
                        add: () => cartViewModel.addProduct(product.product.id),
                        delete: () =>
                            cartViewModel.deleteProduct(product.product.id),
                        decrease: () {
                          cartViewModel.decreaseProduct(
                              product.product.id, product.count);
                        },
                      );
                    },
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: PriceCard(
                      cart: cart,
                    ),
                  ),
                ],
              );
            },
          );
        }),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    cartViewModel.dispose();
  }
}

class PlusMinusButtons extends StatelessWidget {
  final int count;
  final VoidCallback decrease;
  final VoidCallback add;

  const PlusMinusButtons(
      {Key? key,
      required this.add,
      required this.count,
      required this.decrease})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = count == 1 ? Colors.grey : Colors.black;

    return Row(
      children: [
        InkWell(
          onTap: () {
            if (count != 1) {
              decrease.call();
            }
          },
          child: Container(
            width: 32,
            height: 34,
            color: color,
            child: const Icon(
              Icons.remove,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(count.toString())),
        InkWell(
          onTap: add,
          child: Container(
            width: 32,
            height: 34,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.rectangle,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final VoidCallback add;
  final VoidCallback decrease;
  final VoidCallback delete;
  final CartProduct cartProduct;

  const ProductCard(
      {super.key,
      required this.cartProduct,
      required this.add,
      required this.delete,
      required this.decrease});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                context.router.push(
                  ProductRoute(
                    productId: cartProduct.product.id,
                  ),
                );
              },
              child: Container(
                height: 100,
                width: 100,
                padding: const EdgeInsets.all(5),
                child: CachedNetworkImage(
                  imageUrl: cartProduct.product.picture,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 44,
                        child: Text(
                          cartProduct.product.name,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          delete.call();
                        },
                        child: const Icon(Icons.close),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(builder: (context) {
                        final price =
                            Text('${cartProduct.product.price.toString()}₽');
                        if (cartProduct.product.oldPrice != null) {
                          return Column(children: [
                            price,
                            Text(
                              '${cartProduct.product.oldPrice.toString()}₽',
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
                      PlusMinusButtons(
                        add: add,
                        decrease: decrease,
                        count: cartProduct.count,
                      )
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PriceCard extends StatelessWidget {
  final Cart cart;

  const PriceCard({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: Text(
                      'Итого:',
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text('${cart.price}₽'),
                  ),
                ),
              ],
            ),
            if (cart.oldPrice != null)
              Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: Text(
                        'Скидка:',
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        '-${cart.oldPrice! - cart.price}₽',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            OutlinedButton(
              onPressed: () {
                context.router.navigate(OrderRoute(cart: cart));
              },
              child: const Text('Оформить заказ'),
            ),
          ],
        ),
      ),
    );
  }
}
