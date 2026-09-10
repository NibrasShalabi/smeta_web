import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../application/catalog_management_controller.dart';

class CatalogManagementPage extends ConsumerWidget {
  const CatalogManagementPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(catalogManagementControllerProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('CatalogManagement')),
      body: state.when(
        data: (data) => const Center(child: Text('CatalogManagement Page')),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('Error: $e')),
      ),
    );
  }
}
