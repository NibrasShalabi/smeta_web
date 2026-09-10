import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../domain/settings.dart';

part 'settings_repository.g.dart';

class SettingsRepository {
  // TODO: inject http client / local db / etc.

  Future<Settings> getSettings() async {
    // TODO: fetch from remote/local source
    throw UnimplementedError();
  }
}

@riverpod
SettingsRepository settingsRepository(Ref ref) {
  return SettingsRepository();
}
