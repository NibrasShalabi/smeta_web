import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';
import '../localization/l10n_extension.dart';

class AppNavDrawer extends StatelessWidget {
  const AppNavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final items = <(String, String)>[
      (l10n.navAbout, '/about'),
      (l10n.navProjects, '/projects'),
      (l10n.navRental, '/rental'),
      (l10n.navSales, '/sales'),
      (l10n.navEstimator, '/estimator'),
      (l10n.navContact, '/contact'),
    ];

    return Drawer(
      backgroundColor: AppColors.navySurface,
      width: 280,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(l10n.appName,
                  style: AppTextStyles.headlineAr.copyWith(fontSize: 22, color: AppColors.gold)),
            ),
            const SizedBox(height: 32),
            for (final item in items)
              ListTile(
                title: Text(item.$1, style: AppTextStyles.bodyAr.copyWith(color: AppColors.textPrimary, fontSize: 16)),
                onTap: () => Navigator.pop(context), // TODO: context.go(item.$2)
              ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(24),
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.gold,
                  minimumSize: const Size.fromHeight(50),
                  shape: const RoundedRectangleBorder(),
                ),
                onPressed: () {},
                child: Text(l10n.navRequestQuote),
              ),
            ),
          ],
        ),
      ),
    );
  }
}