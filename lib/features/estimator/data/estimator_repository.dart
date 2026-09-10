import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../domain/estimator.dart';

part 'estimator_repository.g.dart';

class EstimatorRepository {
  // TODO: inject http client / local db / etc.

  Future<Estimator> getEstimator() async {
    // TODO: fetch from remote/local source
    throw UnimplementedError();
  }
}

@riverpod
EstimatorRepository estimatorRepository(Ref ref) {
  return EstimatorRepository();
}
