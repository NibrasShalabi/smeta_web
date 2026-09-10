import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/about_repository.dart';
import '../domain/about.dart';

part 'about_controller.g.dart';

@riverpod
class AboutController extends _$AboutController {
  @override
  Future<About?> build() async {
    return null;
  }

  // TODO: add methods, e.g.:
  // Future<void> load() async {
  //   final repository = ref.read(aboutRepositoryProvider);
  //   state = const AsyncLoading();
  //   state = await AsyncValue.guard(() => repository.getAbout());
  // }
}
