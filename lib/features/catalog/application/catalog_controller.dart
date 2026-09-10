import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/catalog_repository.dart';
import '../domain/catalog.dart';

part 'catalog_controller.g.dart';

@riverpod
class CatalogController extends _$CatalogController {
  @override
  Future<Catalog?> build() async {
    return null;
  }

  // TODO: add methods, e.g.:
  // Future<void> load() async {
  //   final repository = ref.read(catalogRepositoryProvider);
  //   state = const AsyncLoading();
  //   state = await AsyncValue.guard(() => repository.getCatalog());
  // }
}
