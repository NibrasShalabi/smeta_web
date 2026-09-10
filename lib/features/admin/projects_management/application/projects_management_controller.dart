import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/projects_management_repository.dart';
import '../domain/projects_management.dart';

part 'projects_management_controller.g.dart';

@riverpod
class ProjectsManagementController extends _$ProjectsManagementController {
  @override
  Future<ProjectsManagement?> build() async {
    return null;
  }

  // TODO: add methods, e.g.:
  // Future<void> load() async {
  //   final repository = ref.read(projectsManagementRepositoryProvider);
  //   state = const AsyncLoading();
  //   state = await AsyncValue.guard(() => repository.getProjectsManagement());
  // }
}
