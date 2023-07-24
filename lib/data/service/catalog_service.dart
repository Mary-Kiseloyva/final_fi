import 'dart:async';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../model/product_details.dart';
import '../entity/catalog/catalog_products_request.dart';
import '../entity/catalog/catalog_products_response.dart';

part 'catalog_service.g.dart';

@RestApi()
abstract class CatalogService {
  factory CatalogService(Dio dio, {String baseUrl}) = _CatalogService;

  @POST('/catalog/products/')
  Future<CatalogProductsResponse> getProducts({
    @Query('page') int? page,
    @Query('size') int? size,
    @Body() CatalogProductsRequest? request,
  });

  @GET('/catalog/product/')
  Future<ProductDetails> getProduct({
    @Query('product_id') int? productId,
    @Query('city_fias') String? cityFias,
  });
}
