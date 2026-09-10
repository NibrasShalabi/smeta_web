import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../domain/catalog_management.dart';

part 'catalog_management_repository.g.dart';

class CatalogManagementRepository {
  // TODO: inject http client / local db / etc.

  Future<CatalogManagement> getCatalogManagement() async {
    // TODO: fetch from remote/local source
    throw UnimplementedError();
  }
}

@riverpod
CatalogManagementRepository catalogManagementRepository(Ref ref) {
  return CatalogManagementRepository();
}
