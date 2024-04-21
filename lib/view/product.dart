import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fi/view_model/cart_view_model.dart';
import 'package:fi/view_model/product_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:provider/provider.dart';

@RoutePage()
class ProductPage extends StatefulWidget {
  const ProductPage({
    super.key,
    @pathParam required this.productId,
  });

  final int productId;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final ProductViewModel productViewModel = ProductViewModel();

  @override
  void initState() {
    super.initState();
    productViewModel.init();
    if (productViewModel.isLoggedIn()) {
      productViewModel.loadCart();
    }
  }

  @override
  void dispose() {
    super.dispose();
    productViewModel.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cartViewModel = context.read<CartViewModel>();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: FutureBuilder(
          future: productViewModel.getProductDetails(widget.productId),
          builder: (context, snapshot) {
            final details = snapshot.data;
            if (details == null) {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            }
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CachedNetworkImage(
                    imageUrl: details.picture,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      details.name,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          '${details.price}P',
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      if (details.oldPrice != null)
                        Text(
                          '${details.oldPrice}P',
                          style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                    ],
                  ),
                  if (details.description != null)
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        details.description!,
                      ),
                    ),
                  Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: StreamBuilder(
                          stream: cartViewModel.cartController.stream,
                          builder: (context, snapshot) {
                            final cart =
                                cartViewModel.cartController.valueOrNull;
                            final cartProduct = cart?.products
                                .firstWhereOrNull((e) => e.product.id == details.id);
                            if (cartProduct != null) {
                              final id = cartProduct.product.id;
                              final count = cartProduct.count;
                              return PlusMinusButtons(
                                count: count,
                                add: () => cartViewModel.addProduct(cartProduct.product),
                                decrease: () =>
                                    cartViewModel.decreaseProduct(cartProduct.product, count),
                                delete: () =>
                                    cartViewModel.deleteProduct(id),
                              );
                            } else {
                              return SizedBox(
                                height: 50,
                                width: 345,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () =>
                                      cartViewModel.addProduct2(details),
                                  child: const Text('В КОРЗИНУ', style: TextStyle(color: Colors.white),),
                                ),
                              );
                            }
                          })),

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class PlusMinusButtons extends StatelessWidget {
  final int count;
  final VoidCallback decrease;
  final VoidCallback delete;
  final VoidCallback add;

  const PlusMinusButtons(
      {Key? key,
      required this.add,
      required this.count,
      required this.decrease,
      required this.delete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              if (count != 1) {
                decrease.call();
              } else {
                delete.call();
              }
            },
            child: Container(
              width: 80,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), bottomLeft:  Radius.circular(10.0)),
              ),
              child: const Icon(
                Icons.remove,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 55),
              color: const Color(0xFFE6E6E6),
              child: Column(
                children: [
                  const Text('В КОРЗИНЕ'),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(count.toString()),
                  ),
                ],
              )),
          InkWell(
            onTap: add,
            child: Container(
              width: 80,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), bottomRight:  Radius.circular(10.0)),
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
