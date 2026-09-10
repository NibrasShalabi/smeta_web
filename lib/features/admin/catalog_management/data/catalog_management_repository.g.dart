// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_management_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(catalogManagementRepository)
final catalogManagementRepositoryProvider =
    CatalogManagementRepositoryProvider._();

final class CatalogManagementRepositoryProvider
    extends
        $FunctionalProvider<
          CatalogManagementRepository,
          CatalogManagementRepository,
          CatalogManagementRepository
        >
    with $Provider<CatalogManagementRepository> {
  CatalogManagementRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'catalogManagementRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$catalogManagementRepositoryHash();

  @$internal
  @override
  $ProviderElement<CatalogManagementRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CatalogManagementRepository create(Ref ref) {
    return catalogManagementRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CatalogManagementRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CatalogManagementRepository>(value),
    );
  }
}

String _$catalogManagementRepositoryHash() =>
    r'fbe9db99c794d1f9db462c953179dd64e611db7f';
