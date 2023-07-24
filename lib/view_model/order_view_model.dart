import 'package:fi/data/entity/order/payments_request.dart';
import 'package:fi/data/service/order_service.dart';
import 'package:fi/model/payment.dart';

import '../data/entity/order/order_request.dart';
import '../data/entity/order/product_with_count.dart';
import '../data/repository/cart_repository.dart';
import '../model/order.dart';
import '../util/app_components.dart';
import '../util/request_utils.dart';

class OrderViewModel {
  final OrderService orderService = AppComponents().orderService;
  final CartRepository cartRepository = AppComponents().cartRepository;

  Future<List<Payment>> getPayments(List<ProductWithCount> products) {
    return RequestUtils().executeRequest(() {
      return orderService.getPayments(
          request: PaymentsRequest(products: products, deliveryId: ''));
    });
  }

  Future<Order> makeOrder(
    List<ProductWithCount> products,
    String username,
    String userPhone,
    String userEmail,
    Payment? payment,
    DateTime? dateTime,
  ) {
    final dateStr = dateTime == null ? '' : dateTime.toIso8601String();
    final index = dateStr.indexOf('T');
    final future = RequestUtils().executeRequest(() {
      return orderService.postOrder(
        request: OrderRequest(
          products: products,
          username: username,
          userPhone: userPhone,
          userEmail: userEmail,
          deliveryId: '1',
          deliveryType: '1',
          deliveryDate: dateStr.substring(0, index),
          paymentId: payment?.id ?? '',
          paymentType: payment?.type ?? '',
        ),
      );
    });
    future.then((value) {
      cartRepository.loadCart();
    });
    return future;
  }
}
