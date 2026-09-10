// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productDetailsRepository)
final productDetailsRepositoryProvider = ProductDetailsRepositoryProvider._();

final class ProductDetailsRepositoryProvider
    extends
        $FunctionalProvider<
          ProductDetailsRepository,
          ProductDetailsRepository,
          ProductDetailsRepository
        >
    with $Provider<ProductDetailsRepository> {
  ProductDetailsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productDetailsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productDetailsRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProductDetailsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProductDetailsRepository create(Ref ref) {
    return productDetailsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductDetailsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductDetailsRepository>(value),
    );
  }
}

String _$productDetailsRepositoryHash() =>
    r'261f8e7916235f7a78dfbdd777fc4125a4d630c3';
