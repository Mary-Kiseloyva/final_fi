import 'package:decimal/decimal.dart';
import 'package:fi/data/service/catalog_service.dart';
import 'package:fi/util/app_components.dart';
import 'package:fi/util/constants_utils.dart';
import 'package:fi/util/request_utils.dart';
import 'package:fi/view_model/base_cart_view_model.dart';

import '../model/product_details.dart';

class ProductViewModel extends BaseCartViewModel {
  final CatalogService catalogService = AppComponents().catalogService;

  Future<ProductDetails> getProductDetails(int productId) {
    return Future.value(ProductDetails(
      id: 1,
      price: Decimal.parse('5.99'),
      oldPrice: Decimal.parse('7.99'),
      badges: [],
      name: 'Philadelphia Roll',
      picture: 'https://i.imgur.com/JsTavtL.png',
      description: 'Нежный лосось, сливочный сыр, черный рис, огурцы и красная икра лосося.'
    ));
  }


}