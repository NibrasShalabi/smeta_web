import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../domain/estimator_pricing.dart';

part 'estimator_pricing_repository.g.dart';

class EstimatorPricingRepository {
  // TODO: inject http client / local db / etc.

  Future<EstimatorPricing> getEstimatorPricing() async {
    // TODO: fetch from remote/local source
    throw UnimplementedError();
  }
}

@riverpod
EstimatorPricingRepository estimatorPricingRepository(Ref ref) {
  return EstimatorPricingRepository();
}
