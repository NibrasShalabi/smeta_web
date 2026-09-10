import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../domain/product_details.dart';

part 'product_details_repository.g.dart';

class ProductDetailsRepository {
  // TODO: inject http client / local db / etc.

  Future<ProductDetails> getProductDetails() async {
    // TODO: fetch from remote/local source
    throw UnimplementedError();
  }
}

@riverpod
ProductDetailsRepository productDetailsRepository(Ref ref) {
  return ProductDetailsRepository();
}
