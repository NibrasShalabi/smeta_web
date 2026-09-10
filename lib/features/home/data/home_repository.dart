import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../domain/home.dart';

part 'home_repository.g.dart';

class HomeRepository {
  // TODO: inject http client / local db / etc.

  Future<Home> getHome() async {
    // TODO: fetch from remote/local source
    throw UnimplementedError();
  }
}

@riverpod
HomeRepository homeRepository(Ref ref) {
  return HomeRepository();
}
