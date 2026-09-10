import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../application/estimator_pricing_controller.dart';

class EstimatorPricingPage extends ConsumerWidget {
  const EstimatorPricingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(estimatorPricingControllerProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('EstimatorPricing')),
      body: state.when(
        data: (data) => const Center(child: Text('EstimatorPricing Page')),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('Error: $e')),
      ),
    );
  }
}
