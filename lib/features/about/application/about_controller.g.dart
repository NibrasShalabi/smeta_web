// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AboutController)
final aboutControllerProvider = AboutControllerProvider._();

final class AboutControllerProvider
    extends $AsyncNotifierProvider<AboutController, About?> {
  AboutControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aboutControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aboutControllerHash();

  @$internal
  @override
  AboutController create() => AboutController();
}

String _$aboutControllerHash() => r'7f06b56a92621d52c2c88030c882eac77324284b';

abstract class _$AboutController extends $AsyncNotifier<About?> {
  FutureOr<About?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<About?>, About?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<About?>, About?>,
              AsyncValue<About?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
