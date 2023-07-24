import 'package:fi/data/service/catalog_service.dart';
import 'package:fi/util/app_components.dart';
import 'package:fi/util/constants_utils.dart';
import 'package:fi/util/request_utils.dart';
import 'package:fi/view_model/base_cart_view_model.dart';

import '../model/product_details.dart';

class ProductViewModel extends BaseCartViewModel{
  final CatalogService catalogService = AppComponents().catalogService;

  Future<ProductDetails> getProductDetails(int productId) {
    return RequestUtils().executeRequest(() {
      return catalogService.getProduct(productId: productId, cityFias: ConstantsUtils.cityFias);
    });
  }

}