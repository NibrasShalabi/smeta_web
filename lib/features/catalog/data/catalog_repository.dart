import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../domain/catalog.dart';

part 'catalog_repository.g.dart';

class CatalogRepository {
  // TODO: inject http client / local db / etc.

  Future<Catalog> getCatalog() async {
    // TODO: fetch from remote/local source
    throw UnimplementedError();
  }
}

@riverpod
CatalogRepository catalogRepository(Ref ref) {
  return CatalogRepository();
}
