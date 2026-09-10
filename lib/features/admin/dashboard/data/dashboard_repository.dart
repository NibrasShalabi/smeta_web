import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../domain/dashboard.dart';

part 'dashboard_repository.g.dart';

class DashboardRepository {
  // TODO: inject http client / local db / etc.

  Future<Dashboard> getDashboard() async {
    // TODO: fetch from remote/local source
    throw UnimplementedError();
  }
}

@riverpod
DashboardRepository dashboardRepository(Ref ref) {
  return DashboardRepository();
}
