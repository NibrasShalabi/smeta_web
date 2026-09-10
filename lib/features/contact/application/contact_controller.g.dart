// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ContactController)
final contactControllerProvider = ContactControllerProvider._();

final class ContactControllerProvider
    extends $AsyncNotifierProvider<ContactController, Contact?> {
  ContactControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'contactControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$contactControllerHash();

  @$internal
  @override
  ContactController create() => ContactController();
}

String _$contactControllerHash() => r'92d6f63dfc65717b6ae3245b019de22bbfbe8741';

abstract class _$ContactController extends $AsyncNotifier<Contact?> {
  FutureOr<Contact?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Contact?>, Contact?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Contact?>, Contact?>,
              AsyncValue<Contact?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
