import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../domain/about.dart';

part 'about_repository.g.dart';

class AboutRepository {
  // TODO: inject http client / local db / etc.

  Future<About> getAbout() async {
    // TODO: fetch from remote/local source
    throw UnimplementedError();
  }
}

@riverpod
AboutRepository aboutRepository(Ref ref) {
  return AboutRepository();
}
