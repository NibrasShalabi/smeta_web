// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_management_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CatalogManagementController)
final catalogManagementControllerProvider =
    CatalogManagementControllerProvider._();

final class CatalogManagementControllerProvider
    extends
        $AsyncNotifierProvider<
          CatalogManagementController,
          CatalogManagement?
        > {
  CatalogManagementControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'catalogManagementControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$catalogManagementControllerHash();

  @$internal
  @override
  CatalogManagementController create() => CatalogManagementController();
}

String _$catalogManagementControllerHash() =>
    r'79e5eecf573fde680a66237082e3347bc99e66f4';

abstract class _$CatalogManagementController
    extends $AsyncNotifier<CatalogManagement?> {
  FutureOr<CatalogManagement?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<CatalogManagement?>, CatalogManagement?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<CatalogManagement?>, CatalogManagement?>,
              AsyncValue<CatalogManagement?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
