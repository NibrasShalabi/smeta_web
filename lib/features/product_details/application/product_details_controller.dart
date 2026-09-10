import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/product_details_repository.dart';
import '../domain/product_details.dart';

part 'product_details_controller.g.dart';

@riverpod
class ProductDetailsController extends _$ProductDetailsController {
  @override
  Future<ProductDetails?> build() async {
    return null;
  }

  // TODO: add methods, e.g.:
  // Future<void> load() async {
  //   final repository = ref.read(productDetailsRepositoryProvider);
  //   state = const AsyncLoading();
  //   state = await AsyncValue.guard(() => repository.getProductDetails());
  // }
}
