import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fi/data/entity/order/product_with_count.dart';
import 'package:fi/navigation/app_router.dart';
import 'package:fi/util/snack_bar_util.dart';
import 'package:fi/view/auth.dart';
import 'package:fi/view_model/order_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/cart.dart';
import '../model/payment.dart';

@RoutePage()
class OrderPage extends StatefulWidget {
  final Cart? cart;

  const OrderPage({super.key, this.cart});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final DateFormat dateFormatter = DateFormat('dd MMMM', 'ru');
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final OrderViewModel orderViewModel = OrderViewModel();
  late List<ProductWithCount> products;
  Payment? selectedPayment;
  DateTime? deliveryDate;

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    mailController.dispose();
    super.dispose();
  }


  @override
  void initState() {
    super.initState();
    products = widget.cart!.products
        .map((e) => ProductWithCount(productId: e.product.id, count: e.count))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final cart = widget.cart!;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Оформление заказа'),
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: orderViewModel.getPayments(products),
          builder: (context, snapshot) {
            final silvers = <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text('Данные получателя'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          hintText: 'ФИО',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextField(
                        controller: phoneController,
                        decoration: const InputDecoration(
                          hintText: 'Телефон',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextField(
                        controller: mailController,
                        decoration: const InputDecoration(
                          hintText: 'E-mail',
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      child: const Text('Выбор даты доставки'),
                    ),
                    SizedBox(
                      width: 250,
                      child: OutlinedButton(
                        onPressed: () async {
                          final res = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate:
                                DateTime.now().add(const Duration(days: 10)),
                          );
                          setState(() {
                            deliveryDate = res;
                          });
                        },
                        child: Text(deliveryDate == null
                            ? 'Выбрать дату'
                            : dateFormatter.format(deliveryDate!)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Способы оплаты'),
                      ),
                    ),
                  ],
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Товары'),
                            Text(
                              '${cart.price}₽',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Доставка'),
                            Text(
                              '0₽',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                            // no delivery, no price, right ?)
                          ],
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Итог'),
                            Text(
                              '${cart.price}₽',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          orderViewModel
                              .makeOrder(
                                products,
                                nameController.text,
                                nameController.text,
                                nameController.text,
                                selectedPayment,
                                deliveryDate,
                              )
                              .then((value) => context.router
                                  .navigate(OrderResultRoute(order: value)))
                              .catchError((error, stackTrace) =>
                                  {context.showSnackBar('Неверные данные')});
                        },
                        child: const Text('Перейти к оплате'),
                      ),
                      const ConfidentialNoteWidget(
                        padding: EdgeInsets.symmetric(vertical: 10),
                      ),
                    ],
                  ),
                ),
              ),
            ];
            final payments = snapshot.data;
            if (payments == null) {
              silvers.insert(
                  1,
                  const SliverToBoxAdapter(
                    child: Center(
                      child: CupertinoActivityIndicator(),
                    ),
                  ));
            } else {
              silvers.insert(
                  1,
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final payment = payments[index];
                        return PaymentCard(
                          payment: payment,
                          selected: selectedPayment,
                          onTap: () => setState(
                            () {
                              selectedPayment = payment;
                            },
                          ),
                        );
                      },
                      childCount: payments.length,
                    ),
                  ));
            }
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CustomScrollView(slivers: silvers));
          },
        ),
      ),
    );
  }
}

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    super.key,
    required this.payment,
    required this.selected,
    this.onTap,
  });

  final Payment payment;
  final Payment? selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 80,
        child: ListTile(
          onTap: onTap,
          leading: AspectRatio(
            aspectRatio: 1.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: payment.icon,
              ),
            ),
          ),
          title: Text(payment.title, style: const TextStyle()),
          subtitle: Text(payment.description, style: const TextStyle()),
          trailing: Icon(payment == selected ? Icons.check : null),
        ),
      ),
    );
  }
}
