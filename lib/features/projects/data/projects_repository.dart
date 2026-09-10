import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../domain/projects.dart';

part 'projects_repository.g.dart';

class ProjectsRepository {
  // TODO: inject http client / local db / etc.

  Future<Projects> getProjects() async {
    // TODO: fetch from remote/local source
    throw UnimplementedError();
  }
}

@riverpod
ProjectsRepository projectsRepository(Ref ref) {
  return ProjectsRepository();
}
