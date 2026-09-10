// features/home/presentation/widgets/trust_strip_section.dart
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/l10n_extension.dart';

class TrustStripSection extends StatelessWidget {
  const TrustStripSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final items = [l.trustLicense, l.trustExperience, l.trustTeam, l.trustWarranty];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 26),
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.border))),
      child: Wrap(
        alignment: WrapAlignment.spaceAround, spacing: 24, runSpacing: 12,
        children: [for (final t in items) Text(t, style: AppTextStyles.bodyAr.copyWith(fontSize: 13, color: AppColors.textSecondary))],
      ),
    );
  }
}