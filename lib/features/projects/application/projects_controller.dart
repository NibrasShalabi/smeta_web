import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/projects_repository.dart';
import '../domain/projects.dart';

part 'projects_controller.g.dart';

@riverpod
class ProjectsController extends _$ProjectsController {
  @override
  Future<Projects?> build() async {
    return null;
  }

  // TODO: add methods, e.g.:
  // Future<void> load() async {
  //   final repository = ref.read(projectsRepositoryProvider);
  //   state = const AsyncLoading();
  //   state = await AsyncValue.guard(() => repository.getProjects());
  // }
}
