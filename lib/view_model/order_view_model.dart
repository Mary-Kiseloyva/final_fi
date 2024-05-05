import 'package:fi/data/entity/order/payments_request.dart';
import 'package:fi/data/service/order_service.dart';
import 'package:fi/model/payment.dart';
import 'package:fi/util/value_stream_wrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../data/entity/order/order_request.dart';
import '../data/entity/order/product_with_count.dart';
import '../data/repository/cart_repository.dart';
import '../model/order.dart';
import '../util/app_components.dart';
import '../util/request_utils.dart';
import 'base_view_model.dart';

class OrderViewModel extends BaseViewModel {
  final OrderService orderService = AppComponents().orderService;
  final CartRepository cartRepository = AppComponents().cartRepository;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final ValueStreamWrapper<Payment> paymentController = ValueStreamWrapper();
  final ValueStreamWrapper<DateTime> dateController = ValueStreamWrapper();
  final ValueStreamWrapper<TimeOfDay> timeController = ValueStreamWrapper();
  final BehaviorSubject<int?> distinctController =BehaviorSubject.seeded(
   -1
  );
  final List<MapObject> map = [
    PolygonMapObject(
      consumeTapEvents: false,
      polygon: const Polygon(
        outerRing: LinearRing(points: [
          Point(latitude: 51.658192, longitude: 39.149170),
          Point(latitude: 51.658192, longitude: 39.196428),
          Point(latitude: 51.625276, longitude: 39.196428),
          Point(latitude: 51.625276, longitude: 39.149170),
        ]),
        innerRings: [],
      ),
      strokeWidth: 2.0,
      strokeColor: Colors.orange,
      fillColor: Colors.orange.withOpacity(0.5),
      mapId: const MapObjectId('polygon map object'),
    ),
    PolygonMapObject(
      consumeTapEvents: false,
      polygon: const Polygon(
        outerRing: LinearRing(points: [
          Point(latitude: 51.673582, longitude: 39.201915),
          Point(latitude: 51.673582, longitude: 39.240453),
          Point(latitude: 51.648134, longitude: 39.240453),
          Point(latitude: 51.648134, longitude: 39.201915),
        ]),
        innerRings: [],
      ),
      strokeWidth: 2.0,
      strokeColor: Colors.blue,
      fillColor: Colors.orange.withOpacity(0.5),
      mapId: const MapObjectId('polygon map object'),
    ),
  ];
  late final List<ProductWithCount> products;

  Future<List<Payment>> getPayments() {
    return RequestUtils().executeRequest(() {
      return orderService.getPayments(
        request: PaymentsRequest(products: products, deliveryId: ''),
      );
    });
  }

  void chooseDistinct(int index){
    distinctController.add(index);
  }

  Future<Order> makeOrder() {
    final dateStr = dateController.valueOrNull?.toIso8601String() ?? '';
    final index = dateStr.indexOf('T');
    final future = RequestUtils().executeRequest(() {
      return orderService.postOrder(
        request: OrderRequest(
          products: products,
          username: nameController.text,
          userPhone: phoneController.text,
          userEmail: mailController.text,
          deliveryId: '1',
          deliveryType: '1',
          deliveryDate: dateStr.substring(0, index),
          paymentId: paymentController.valueOrNull?.id ?? '',
          paymentType: paymentController.valueOrNull?.type ?? '',
        ),
      );
    });
    future.then((value) {
      cartRepository.loadCart();
    });
    return future;
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    mailController.dispose();
    paymentController.dispose();
    dateController.dispose();
  }
}
