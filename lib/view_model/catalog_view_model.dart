import 'package:decimal/decimal.dart';
import 'package:fi/data/repository/cart_repository.dart';
import 'package:fi/data/repository/token_ropository.dart';
import 'package:fi/model/badge.dart';
import 'package:fi/util/constants_utils.dart';

import '../data/service/catalog_service.dart';
import '../model/cart.dart';
import '../model/product.dart';
import '../util/app_components.dart';
import 'base_view_model.dart';

class CatalogViewModel extends BaseViewModel {
  final CatalogService catalogService = AppComponents().catalogService;
  final CartRepository cartRepository = AppComponents().cartRepository;
  final TokenRepository tokenRepository = AppComponents().tokenRepository;

  Future<(List<Product>, bool)> loadProducts(int page) async {
    List<Product> products = [
      Product(
        id: 1,
        picture: 'https://i.imgur.com/JsTavtL.png',
        badges: [],
        price: Decimal.parse('5.99'),
        oldPrice: Decimal.parse('7.99'),
        name: 'Philadelphia Roll',
        article: 'ROL001',
        rating: 4.6,
        reviewsCount: 245,
        cityFias: 'City1',
      ),
      Product(
        id: 2,
        picture: 'https://i.imgur.com/DlPzP3Z.png',
        badges: [],
        price: Decimal.parse('6.49'),
        oldPrice: null,
        name: 'Spicy Tuna Roll',
        article: 'ROL002',
        rating: 4.3,
        reviewsCount: 187,
        cityFias: 'City2',
      ),
      Product(
        id: 3,
        picture: 'https://i.imgur.com/JsTavtL.png',
        badges: [],
        price: Decimal.parse('5.49'),
        oldPrice: null,
        name: 'Veggie Roll',
        article: 'ROL003',
        rating: 4.1,
        reviewsCount: 112,
        cityFias: 'City3',
      ),
      Product(
        id: 4,
        picture: 'https://i.imgur.com/DlPzP3Z.png',
        badges: [],
        price: Decimal.parse('7.99'),
        oldPrice: null,
        name: 'Rainbow Roll',
        article: 'ROL004',
        rating: 4.8,
        reviewsCount: 356,
        cityFias: 'City4',
      ),
      Product(
        id: 5,
        picture: 'https://i.imgur.com/JsTavtL.png',
        badges: [],
        price: Decimal.parse('6.99'),
        oldPrice: Decimal.parse('8.99'),
        name: 'Dragon Roll',
        article: 'ROL005',
        rating: 4.5,
        reviewsCount: 291,
        cityFias: 'City1',
      ),
      Product(
        id: 6,
        picture: 'https://i.imgur.com/JsTavtL.png',
        badges: [],
        price: Decimal.parse('6.99'),
        oldPrice: null,
        name: 'Spicy Salmon Roll',
        article: 'ROL006',
        rating: 4.4,
        reviewsCount: 220,
        cityFias: 'City2',
      ),
      Product(
        id: 7,
        picture: 'https://i.imgur.com/JsTavtL.png',
        badges: [],
        price: Decimal.parse('5.99'),
        oldPrice: null,
        name: 'Avocado Roll',
        article: 'ROL007',
        rating: 4.2,
        reviewsCount: 155,
        cityFias: 'City3',
      ),
      Product(
        id: 8,
        picture: 'https://i.imgur.com/JsTavtL.png',
        badges: [],
        price: Decimal.parse('8.99'),
        oldPrice: null,
        name: 'California Roll',
        article: 'ROL008',
        rating: 4.7,
        reviewsCount: 312,
        cityFias: 'City4',
      ),
      Product(
        id: 9,
        picture: 'https://i.imgur.com/JsTavtL.png',
        badges: [],
        price: Decimal.parse('7.49'),
        oldPrice: Decimal.parse('9.49'),
        name: 'Alaska Roll',
        article: 'ROL009',
        rating: 4.5,
        reviewsCount: 268,
        cityFias: 'City1',
      ),
      Product(
        id: 10,
        picture: 'https://i.imgur.com/JsTavtL.png',
        badges: [],
        price: Decimal.parse('6.99'),
        oldPrice: null,
        name: 'Spicy Crab Roll',
        article: 'ROL010',
        rating: 4.3,
        reviewsCount: 205,
        cityFias: 'City2',
      ),
    ];
    Future.delayed(const Duration(milliseconds: 500), () {
      //return (products, true);
    });
    return (products, false);
  }

  Future<Cart> addProduct(int productId) {
    return cartRepository.addProduct(productId);
  }

  bool isLoggedIn() {
    return tokenRepository.auth;
  }
}
