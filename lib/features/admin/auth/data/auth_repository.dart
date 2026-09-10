import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../domain/auth.dart';

part 'auth_repository.g.dart';

class AuthRepository {
  // TODO: inject http client / local db / etc.

  Future<Auth> getAuth() async {
    // TODO: fetch from remote/local source
    throw UnimplementedError();
  }
}

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository();
}
