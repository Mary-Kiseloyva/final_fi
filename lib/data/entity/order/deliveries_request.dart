import 'package:fi/data/entity/order/product_with_count.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deliveries_request.freezed.dart';
part 'deliveries_request.g.dart';

@freezed
class DeliveriesRequest with _$DeliveriesRequest {
  factory DeliveriesRequest({
    required List<ProductWithCount> products,
  }) = _DeliveriesRequest;

  factory DeliveriesRequest.fromJson(Map<String, dynamic> json) =>
      _$DeliveriesRequestFromJson(json);
}


