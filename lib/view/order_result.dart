import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../model/order.dart';

@RoutePage()
class OrderResultPage extends StatefulWidget {
  final Order? order;

  const OrderResultPage({
    super.key,
    this.order,
  });

  @override
  State<OrderResultPage> createState() => _OrderResultPageState();
}

class _OrderResultPageState extends State<OrderResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Заказ'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Заказ №${widget.order?.id} успешно создан'),
            ),
            OutlinedButton(
              onPressed: () {
                context.router.popUntilRoot();
              },
              child: const Text('Перейти к покупкам'),
            ),
          ],
        ),
      ),
    );
  }
}
