// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductDetailsController)
final productDetailsControllerProvider = ProductDetailsControllerProvider._();

final class ProductDetailsControllerProvider
    extends $AsyncNotifierProvider<ProductDetailsController, ProductDetails?> {
  ProductDetailsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productDetailsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productDetailsControllerHash();

  @$internal
  @override
  ProductDetailsController create() => ProductDetailsController();
}

String _$productDetailsControllerHash() =>
    r'd72141a1e394aa10b50ab19d44c4692c94ba0325';

abstract class _$ProductDetailsController
    extends $AsyncNotifier<ProductDetails?> {
  FutureOr<ProductDetails?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ProductDetails?>, ProductDetails?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ProductDetails?>, ProductDetails?>,
              AsyncValue<ProductDetails?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
