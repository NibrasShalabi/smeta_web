// core/widgets/app_nav_links.dart
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';
import '../localization/l10n_extension.dart';

class AppNavLinks extends StatelessWidget {
  const AppNavLinks({super.key});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final items = [l.navAbout, l.navProjects, l.navRental, l.navSales, l.navEstimator, l.navContact];
    return Row(
      children: [
        for (final t in items)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextButton(onPressed: () {}, child: Text(t, style: AppTextStyles.bodyAr.copyWith(fontSize: 14.5))),
          ),
        const SizedBox(width: 8),
        FilledButton(
          style: FilledButton.styleFrom(backgroundColor: AppColors.gold, foregroundColor: AppColors.navy, shape: const RoundedRectangleBorder()),
          onPressed: () {},
          child: Text(l.navRequestQuote),
        ),
      ],
    );
  }
} 