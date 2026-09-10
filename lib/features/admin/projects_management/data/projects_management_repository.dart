import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../domain/projects_management.dart';

part 'projects_management_repository.g.dart';

class ProjectsManagementRepository {
  // TODO: inject http client / local db / etc.

  Future<ProjectsManagement> getProjectsManagement() async {
    // TODO: fetch from remote/local source
    throw UnimplementedError();
  }
}

@riverpod
ProjectsManagementRepository projectsManagementRepository(Ref ref) {
  return ProjectsManagementRepository();
}
