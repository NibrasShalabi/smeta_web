// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estimator_pricing_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EstimatorPricingController)
final estimatorPricingControllerProvider =
    EstimatorPricingControllerProvider._();

final class EstimatorPricingControllerProvider
    extends
        $AsyncNotifierProvider<EstimatorPricingController, EstimatorPricing?> {
  EstimatorPricingControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'estimatorPricingControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$estimatorPricingControllerHash();

  @$internal
  @override
  EstimatorPricingController create() => EstimatorPricingController();
}

String _$estimatorPricingControllerHash() =>
    r'85285800b99447906078ada1c610f067fd0c0cdf';

abstract class _$EstimatorPricingController
    extends $AsyncNotifier<EstimatorPricing?> {
  FutureOr<EstimatorPricing?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<EstimatorPricing?>, EstimatorPricing?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<EstimatorPricing?>, EstimatorPricing?>,
              AsyncValue<EstimatorPricing?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
