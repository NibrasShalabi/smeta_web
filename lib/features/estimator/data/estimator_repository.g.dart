// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estimator_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(estimatorRepository)
final estimatorRepositoryProvider = EstimatorRepositoryProvider._();

final class EstimatorRepositoryProvider
    extends
        $FunctionalProvider<
          EstimatorRepository,
          EstimatorRepository,
          EstimatorRepository
        >
    with $Provider<EstimatorRepository> {
  EstimatorRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'estimatorRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$estimatorRepositoryHash();

  @$internal
  @override
  $ProviderElement<EstimatorRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EstimatorRepository create(Ref ref) {
    return estimatorRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EstimatorRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EstimatorRepository>(value),
    );
  }
}

String _$estimatorRepositoryHash() =>
    r'a8e973780ffc20e95c49bc019ca37b77844e58cf';
