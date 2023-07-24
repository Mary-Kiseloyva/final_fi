import 'package:auto_route/annotations.dart';
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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Продукт'),
      ),
      body: const Center(
        child: Text('TODO: Продукт'),
      ),
    );
  }
}
