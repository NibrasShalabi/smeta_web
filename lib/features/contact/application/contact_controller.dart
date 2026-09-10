import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/contact_repository.dart';
import '../domain/contact.dart';

part 'contact_controller.g.dart';

@riverpod
class ContactController extends _$ContactController {
  @override
  Future<Contact?> build() async {
    return null;
  }

  // TODO: add methods, e.g.:
  // Future<void> load() async {
  //   final repository = ref.read(contactRepositoryProvider);
  //   state = const AsyncLoading();
  //   state = await AsyncValue.guard(() => repository.getContact());
  // }
}
