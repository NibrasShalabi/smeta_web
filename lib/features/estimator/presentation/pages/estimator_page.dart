import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../application/estimator_controller.dart';

class EstimatorPage extends ConsumerWidget {
  const EstimatorPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(estimatorControllerProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Estimator')),
      body: state.when(
        data: (data) => const Center(child: Text('Estimator Page')),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('Error: $e')),
      ),
    );
  }
}
