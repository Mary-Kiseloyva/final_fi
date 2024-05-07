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
  final BehaviorSubject<int?> distinctController = BehaviorSubject.seeded(-1);

  final List<MapObject> map = [
    PolygonMapObject(
      consumeTapEvents: false,
      polygon: Polygon(
        outerRing: LinearRing(
            points: [
          [39.248476814452964, 51.704800832784684],
          [39.23869211596663, 51.67956957861087],
          [39.24624521655261, 51.675941090030896],
          [39.26632959765608, 51.66718882700177],
          [39.30237848681622, 51.65058687911495],
          [39.32297785205061, 51.67828896895326],
          [39.3703563920897, 51.68885291000555],
          [39.388895820800556, 51.72111626964915],
          [39.337740730468546, 51.7450455329106],
          [39.27765924853501, 51.743020832405804],
          [39.2453869096678, 51.73151027575566],
          [39.25057858648082, 51.71259009706071],
          [39.248476814452964, 51.704800832784684]
        ].map((e) => Point(latitude: e[1], longitude: e[0])).toList()),
        innerRings: [],
      ),
      strokeWidth: 2.0,
      strokeColor: Colors.orange,
      fillColor: Colors.orange.withOpacity(0.5),
      mapId: const MapObjectId('polygon map object'),
    ),
    PolygonMapObject(
      consumeTapEvents: false,
      polygon: Polygon(
        outerRing: LinearRing(
            points: [
          [39.23886377734294, 51.679409504472495],
          [39.224100898925116, 51.63998726252426],
          [39.217749427977886, 51.61840654471698],
          [39.21217043322695, 51.60953622867699],
          [39.20762140673764, 51.59574637501341],
          [39.238348793212104, 51.58655080048735],
          [39.26873285693265, 51.58483978948158],
          [39.32752687853913, 51.62492458178531],
          [39.32383615893471, 51.64383224765041],
          [39.30237848681566, 51.65045339825239],
          [39.28418238085911, 51.65920891095232],
          [39.23886377734294, 51.679409504472495]
        ].map((e) => Point(latitude: e[1], longitude: e[0])).toList()),
        innerRings: [],
      ),
      strokeWidth: 2.0,
      strokeColor: Colors.green,
      fillColor: Colors.green.withOpacity(0.5),
      mapId: const MapObjectId('polygon map object'),
    ),
    PolygonMapObject(
      consumeTapEvents: false,
      polygon: Polygon(
        outerRing: LinearRing(
            points: [
          [39.17376140785239, 51.64137565135878],
          [39.17191625576975, 51.63998703079975],
          [39.16633705329923, 51.636462289090346],
          [39.16153032702501, 51.63293727200241],
          [39.21860773486193, 51.6207039931231],
          [39.222384285155066, 51.634058935100015],
          [39.22564585131671, 51.644633245038285],
          [39.18599207324055, 51.65968934734852],
          [39.17037088793781, 51.654938141649566],
          [39.17629320544287, 51.642977834905096],
          [39.17376140785239, 51.64137565135878]
        ].map((e) => Point(latitude: e[1], longitude: e[0])).toList()),
        innerRings: [],
      ),
      strokeWidth: 2.0,
      strokeColor: Colors.yellow,
      fillColor: Colors.yellow.withOpacity(0.5),
      mapId: const MapObjectId('polygon map object'),
    ),
    PolygonMapObject(
      consumeTapEvents: false,
      polygon: Polygon(
        outerRing: LinearRing(
            points: [
          [39.25096631985735, 51.7119726577531],
          [39.24530149441791, 51.73052404961881],
          [39.17938352566789, 51.727539284680354],
          [39.18127180081435, 51.712825763107276],
          [39.19586301785539, 51.7138921220555],
          [39.20221448880264, 51.68423792820966],
          [39.19895292264055, 51.670791104661596],
          [39.185906657992106, 51.6596891155705],
          [39.225817928133665, 51.64473981175155],
          [39.25096631985735, 51.7119726577531]
        ].map((e) => Point(latitude: e[1], longitude: e[0])).toList()),
        innerRings: [],
      ),
      strokeWidth: 2.0,
      strokeColor: Colors.purple,
      fillColor: Colors.purple.withOpacity(0.5),
      mapId: const MapObjectId('polygon map object'),
    ),
    PolygonMapObject(
      consumeTapEvents: false,
      polygon: Polygon(
        outerRing: LinearRing(
            points: [
          [39.17967745510671, 51.72430112177351],
          [39.17843088927974, 51.7359333514938],
          [39.168482612792566, 51.73620011760341],
          [39.13938600939894, 51.715491844484525],
          [39.11715586108343, 51.68282429771098],
          [39.132691215697726, 51.67746188926121],
          [39.150286506835506, 51.67140506840788],
          [39.1846187822262, 51.65939574793602],
          [39.18613816761411, 51.65982300252381],
          [39.1943523467032, 51.666868993343755],
          [39.198941273154375, 51.67076796815623],
          [39.202191605269164, 51.68373793887842],
          [39.19616098898224, 51.713932263652175],
          [39.18126734368764, 51.71309243107267],
          [39.17967745510671, 51.72430112177351]
        ].map((e) => Point(latitude: e[1], longitude: e[0])).toList()),
        innerRings: [],
      ),
      strokeWidth: 2.0,
      strokeColor: Colors.blue,
      fillColor: Colors.blue.withOpacity(0.5),
      mapId: const MapObjectId('polygon map object'),
    ),
    PolygonMapObject(
      consumeTapEvents: false,
      polygon: Polygon(
        outerRing: LinearRing(
            points: [
          [39.117105121711035, 51.68284419924216],
          [39.1057328148356, 51.6980674457384],
          [39.0892533226481, 51.70297409634583],
          [39.08633507923985, 51.682810746655285],
          [39.10195626454259, 51.662211340931336],
          [39.08521876159431, 51.636862970765904],
          [39.120581005246635, 51.62724840835328],
          [39.16143641296147, 51.633017391616704],
          [39.176199291379454, 51.64305793669501],
          [39.17036280456305, 51.654804673491185],
          [39.18478236022711, 51.659288984068866],
          [39.157659862668524, 51.66889671918552],
          [39.117105121711035, 51.68284419924216]
        ].map((e) => Point(latitude: e[1], longitude: e[0])).toList()),
        innerRings: [],
      ),
      strokeWidth: 2.0,
      strokeColor: Colors.black,
      fillColor: Colors.black.withOpacity(0.5),
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

  void chooseDistinct(int index) {
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
