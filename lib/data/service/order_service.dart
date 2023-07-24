import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../model/delivery.dart';
import '../../model/order.dart';
import '../../model/payment.dart';
import '../entity/order/deliveries_request.dart';
import '../entity/order/order_request.dart';
import '../entity/order/payments_request.dart';

part 'order_service.g.dart';

@RestApi()
abstract class OrderService {
  factory OrderService(Dio dio, {String baseUrl}) = _OrderService;

  @POST('/deliveries/deliveries/')
  Future<List<Delivery>> getDeliveries({
    @Body() required DeliveriesRequest request,
  });

  @POST('/payments/')
  Future<List<Payment>> getPayments({
    @Body() required PaymentsRequest request,
  });

  @POST('/order/order/')
  Future<Order> postOrder({
    @Body() required OrderRequest request,
  });
}