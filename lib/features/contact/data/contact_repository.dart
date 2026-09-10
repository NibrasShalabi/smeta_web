import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../domain/contact.dart';

part 'contact_repository.g.dart';

class ContactRepository {
  // TODO: inject http client / local db / etc.

  Future<Contact> getContact() async {
    // TODO: fetch from remote/local source
    throw UnimplementedError();
  }
}

@riverpod
ContactRepository contactRepository(Ref ref) {
  return ContactRepository();
}
