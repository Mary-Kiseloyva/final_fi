import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fi/view_model/product_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Продукт'),
      ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: StreamBuilder(
                      stream: productViewModel.cartController.stream,
                      builder: (context, snapshot) {
                        final cart =
                            productViewModel.cartController.valueOrNull;
                        if (productViewModel.isLoggedIn() && cart != null) {
                          final cartProduct = cart.products
                              .where((e) => e.product.id == details.id);
                          if (cartProduct.isNotEmpty) {
                            final id = cartProduct.first.product.id;
                            final count = cartProduct.first.count;
                            return PlusMinusButtons(
                              count: count,
                              add: () => productViewModel.addProduct(id),
                              decrease: () =>
                                  productViewModel.decreaseProduct(id, count),
                              delete: () => productViewModel.deleteProduct(id),
                            );
                          } else {
                            return SizedBox(
                              width: 250,
                              child: OutlinedButton(
                                onPressed: () =>
                                    productViewModel.addProduct(details.id),
                                child: const Text('В корзину'),
                              ),
                            );
                          }
                        }
                        return const SizedBox(
                          height: 0,
                        );
                      },
                    ),
                  ),
                  if (details.description != null)
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        details.description!,
                      ),
                    ),
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
      height: 34,
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
              width: 32,
              color: Colors.black,
              child: const Icon(
                Icons.remove,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              color: const Color(0xFFE6E6E6),
              child: Text(count.toString())),
          InkWell(
            onTap: add,
            child: Container(
              width: 32,
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
      ),
    );
  }
}
