import 'package:fi/data/repository/cart_repository.dart';
import 'package:fi/data/repository/token_ropository.dart';
import 'package:fi/util/constants_utils.dart';

import '../data/service/catalog_service.dart';
import '../model/cart.dart';
import '../model/product.dart';
import '../util/app_components.dart';
import '../util/request_utils.dart';
import 'base_view_model.dart';

class CatalogViewModel extends BaseViewModel {
  final CatalogService catalogService = AppComponents().catalogService;
  final CartRepository cartRepository = AppComponents().cartRepository;
  final TokenRepository tokenRepository = AppComponents().tokenRepository;

  Future<(List<Product>, bool)> loadProducts(int page) async {
    final response = await RequestUtils().executeRequest(() {
      return catalogService.getProducts(
        page: page,
        size: ConstantsUtils.pageSize,
      );
    });
    return (response.results, response.next != null);
  }

  Future<Cart> addProduct(int productId) {
    return cartRepository.addProduct(productId);
  }

  bool isLoggedIn() {
    return tokenRepository.auth;
  }
}
