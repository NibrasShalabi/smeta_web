// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../../application/cart_controller.dart';
//
// class CartPage extends ConsumerWidget {
//   const CartPage({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(cartControllerProvider);
//     return Scaffold(
//       appBar: AppBar(title: const Text('Cart')),
//       body: state.when(
//         data: (data) => const Center(child: Text('Cart Page')),
//         loading: () => const Center(child: CircularProgressIndicator()),
//         error: (e, st) => Center(child: Text('Error: $e')),
//       ),
//     );
//   }
// }
