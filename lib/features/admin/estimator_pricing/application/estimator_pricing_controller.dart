import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/estimator_pricing_repository.dart';
import '../domain/estimator_pricing.dart';

part 'estimator_pricing_controller.g.dart';

@riverpod
class EstimatorPricingController extends _$EstimatorPricingController {
  @override
  Future<EstimatorPricing?> build() async {
    return null;
  }

  // TODO: add methods, e.g.:
  // Future<void> load() async {
  //   final repository = ref.read(estimatorPricingRepositoryProvider);
  //   state = const AsyncLoading();
  //   state = await AsyncValue.guard(() => repository.getEstimatorPricing());
  // }
}
