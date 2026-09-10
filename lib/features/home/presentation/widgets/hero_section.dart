// features/home/presentation/widgets/hero_section.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/widgets/network_image_placeholder.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/widgets/app_breakpoints.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/staggered_reveal.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return LayoutBuilder(builder: (_, c) {
      final isMobile = AppBreakpoints.isMobile(c.maxWidth);
      return Container(
        decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.border))),
        child: Stack(
          children: [
            Positioned.fill(child: NetworkImagePlaceholder(assetPath: AppImages.heroMain, label: l.heroPhotoLabel)),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: isMobile ? Alignment.bottomCenter : Alignment.centerRight,
                    end: isMobile ? Alignment.topCenter : Alignment.centerLeft,
                    colors: [AppColors.navy.withValues(alpha: .55), AppColors.navy.withValues(alpha: .92)],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: isMobile ? 60 : 110),
              child: StaggeredReveal(
                alignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Container(width: 28, height: 1, color: AppColors.gold),
                    const SizedBox(width: 10),
                    Text(l.trustLicense, style: AppTextStyles.bodyAr.copyWith(color: AppColors.gold, fontSize: 14)),
                  ]),
                  const SizedBox(height: 22),
                  Text(l.heroTitle, style: AppTextStyles.headlineAr.copyWith(fontSize: isMobile ? 32 : 48)),
                  const SizedBox(height: 24),
                  SizedBox(width: 480, child: Text(l.heroSubtitle, style: AppTextStyles.bodyAr.copyWith(fontSize: 16, color: AppColors.gold))),
                  const SizedBox(height: 36),
                  Wrap(spacing: 16, children: [
                    AppButton.primary(label: l.heroCtaPrimary, onPressed: () => context.go('/estimator')),
                    AppButton.secondary(label: l.heroCtaSecondary, onPressed: () => context.go('/projects')),
                  ]),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}