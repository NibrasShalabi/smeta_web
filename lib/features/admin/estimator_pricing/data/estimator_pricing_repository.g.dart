// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estimator_pricing_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(estimatorPricingRepository)
final estimatorPricingRepositoryProvider =
    EstimatorPricingRepositoryProvider._();

final class EstimatorPricingRepositoryProvider
    extends
        $FunctionalProvider<
          EstimatorPricingRepository,
          EstimatorPricingRepository,
          EstimatorPricingRepository
        >
    with $Provider<EstimatorPricingRepository> {
  EstimatorPricingRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'estimatorPricingRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$estimatorPricingRepositoryHash();

  @$internal
  @override
  $ProviderElement<EstimatorPricingRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EstimatorPricingRepository create(Ref ref) {
    return estimatorPricingRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EstimatorPricingRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EstimatorPricingRepository>(value),
    );
  }
}

String _$estimatorPricingRepositoryHash() =>
    r'72800fc6653498987b3b1f8221ed9213584460e6';
