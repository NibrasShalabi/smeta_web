import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/estimator_repository.dart';
import '../domain/estimator.dart';

part 'estimator_controller.g.dart';

@riverpod
class EstimatorController extends _$EstimatorController {
  @override
  Future<Estimator?> build() async {
    return null;
  }

  // TODO: add methods, e.g.:
  // Future<void> load() async {
  //   final repository = ref.read(estimatorRepositoryProvider);
  //   state = const AsyncLoading();
  //   state = await AsyncValue.guard(() => repository.getEstimator());
  // }
}
