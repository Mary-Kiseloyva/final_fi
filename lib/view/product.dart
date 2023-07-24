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
    productViewModel.initCart();
    productViewModel.loadCart();
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
                  CachedNetworkImage(imageUrl: details.picture),
                  Text(
                    details.name,
                    style: const TextStyle(
                      fontSize: 20,
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
                  StreamBuilder(
                    stream: productViewModel.cartController.stream,
                    builder: (context, snapshot) {
                      final cart = snapshot.data;
                      if (productViewModel.isLoggedIn() && cart != null) {
                        final cartProduct = cart.products
                            .where((e) => e.product.id == details.id);
                        debugPrint(cartProduct.toString());
                        if (cartProduct.isNotEmpty) {
                          return PlusMinusButtons(
                              add: () {}, count: 0, decrease: () {});
                        } else {
                          return Container(
                            width: 250,
                            padding: const EdgeInsets.only(top: 20),
                            child: OutlinedButton(
                              onPressed: () {},
                              child: const Text('В корзину'),
                            ),
                          );
                        }
                      }
                      return const SizedBox(height: 0,);
                    },
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
