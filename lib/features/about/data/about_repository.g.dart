// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(aboutRepository)
final aboutRepositoryProvider = AboutRepositoryProvider._();

final class AboutRepositoryProvider
    extends
        $FunctionalProvider<AboutRepository, AboutRepository, AboutRepository>
    with $Provider<AboutRepository> {
  AboutRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aboutRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aboutRepositoryHash();

  @$internal
  @override
  $ProviderElement<AboutRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AboutRepository create(Ref ref) {
    return aboutRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AboutRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AboutRepository>(value),
    );
  }
}

String _$aboutRepositoryHash() => r'14b6119ef800e3027711d602c0fe4a95e65a19b8';
