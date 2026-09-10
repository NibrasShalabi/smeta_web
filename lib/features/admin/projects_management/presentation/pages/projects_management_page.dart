import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../application/projects_management_controller.dart';

class ProjectsManagementPage extends ConsumerWidget {
  const ProjectsManagementPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(projectsManagementControllerProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('ProjectsManagement')),
      body: state.when(
        data: (data) => const Center(child: Text('ProjectsManagement Page')),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('Error: $e')),
      ),
    );
  }
}
