// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estimator_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EstimatorController)
final estimatorControllerProvider = EstimatorControllerProvider._();

final class EstimatorControllerProvider
    extends $AsyncNotifierProvider<EstimatorController, Estimator?> {
  EstimatorControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'estimatorControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$estimatorControllerHash();

  @$internal
  @override
  EstimatorController create() => EstimatorController();
}

String _$estimatorControllerHash() =>
    r'0c9ef858eeb484e06bbddc50b44d30b0711e3f3f';

abstract class _$EstimatorController extends $AsyncNotifier<Estimator?> {
  FutureOr<Estimator?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Estimator?>, Estimator?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Estimator?>, Estimator?>,
              AsyncValue<Estimator?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
