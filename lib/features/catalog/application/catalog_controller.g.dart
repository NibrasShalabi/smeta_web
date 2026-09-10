// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CatalogController)
final catalogControllerProvider = CatalogControllerProvider._();

final class CatalogControllerProvider
    extends $AsyncNotifierProvider<CatalogController, Catalog?> {
  CatalogControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'catalogControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$catalogControllerHash();

  @$internal
  @override
  CatalogController create() => CatalogController();
}

String _$catalogControllerHash() => r'01e3362a8002697633b741dc924335ced20dcbc0';

abstract class _$CatalogController extends $AsyncNotifier<Catalog?> {
  FutureOr<Catalog?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Catalog?>, Catalog?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Catalog?>, Catalog?>,
              AsyncValue<Catalog?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
