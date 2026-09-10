// features/home/presentation/widgets/cta_estimator_section.dart
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/widgets/app_button.dart';

class CtaEstimatorSection extends StatelessWidget {
  const CtaEstimatorSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 90),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.border)),
        gradient: RadialGradient(center: Alignment.topCenter, radius: 1.2, colors: [Color(0x22C9A24B), Colors.transparent]),
      ),
      child: Column(children: [
        SizedBox(width: 560, child: Text(l.ctaTitle, textAlign: TextAlign.center, style: AppTextStyles.headlineAr.copyWith(fontSize: 28))),
        const SizedBox(height: 16),
        Text(l.ctaSubtitle, style: AppTextStyles.bodyAr.copyWith(fontSize: 14)),
        const SizedBox(height: 30),
        AppButton.primary(label: l.ctaButton, onPressed: () {}), // TODO: context.go('/estimator')
      ]),
    );
  }
}