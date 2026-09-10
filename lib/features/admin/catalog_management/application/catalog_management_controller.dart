import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/catalog_management_repository.dart';
import '../domain/catalog_management.dart';

part 'catalog_management_controller.g.dart';

@riverpod
class CatalogManagementController extends _$CatalogManagementController {
  @override
  Future<CatalogManagement?> build() async {
    return null;
  }

  // TODO: add methods, e.g.:
  // Future<void> load() async {
  //   final repository = ref.read(catalogManagementRepositoryProvider);
  //   state = const AsyncLoading();
  //   state = await AsyncValue.guard(() => repository.getCatalogManagement());
  // }
}
