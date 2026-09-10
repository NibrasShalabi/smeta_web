import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/settings_repository.dart';
import '../domain/settings.dart';

part 'settings_controller.g.dart';

@riverpod
class SettingsController extends _$SettingsController {
  @override
  Future<Settings?> build() async {
    return null;
  }

  // TODO: add methods, e.g.:
  // Future<void> load() async {
  //   final repository = ref.read(settingsRepositoryProvider);
  //   state = const AsyncLoading();
  //   state = await AsyncValue.guard(() => repository.getSettings());
  // }
}
