import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../application/product_details_controller.dart';

class ProductDetailsPage extends ConsumerWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productDetailsControllerProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('ProductDetails')),
      body: state.when(
        data: (data) => const Center(child: Text('ProductDetails Page')),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('Error: $e')),
      ),
    );
  }
}
