// // features/home/presentation/widgets/partners_section.dart
// import 'package:flutter/material.dart';
// import '../../../../core/theme/app_colors.dart';
// import '../../../../core/theme/app_text_styles.dart';
// import '../../../../core/localization/l10n_extension.dart';
//
// class PartnersSection extends StatelessWidget {
//   const PartnersSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
//       child: Column(children: [
//         Text(context.l10n.partnersTitle, style: AppTextStyles.bodyAr.copyWith(fontSize: 13, letterSpacing: 1)),
//         const SizedBox(height: 28),
//         Wrap(
//           spacing: 40, runSpacing: 20,
//           children: List.generate(5, (i) => Container(width: 100, height: 40, color: AppColors.navySurface)), // TODO: شعارات فعلية
//         ),
//       ]),
//     );
//   }
// }