// features/home/presentation/widgets/hero_section.dart
import 'package:flutter/material.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/widgets/app_breakpoints.dart';
import '../../../../core/widgets/app_button.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return LayoutBuilder(builder: (_, c) {
      final isMobile = AppBreakpoints.isMobile(c.maxWidth);

      final content = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Container(width: 28, height: 1, color: AppColors.gold),
            const SizedBox(width: 10),
            Text(l.trustLicense, style: AppTextStyles.bodyAr.copyWith(color: AppColors.gold, fontSize: 14)),
          ]),
          const SizedBox(height: 22),
          Text(l.heroTitle, style: AppTextStyles.headlineAr.copyWith(fontSize: isMobile ? 32 : 48)),
          const SizedBox(height: 24),
          SizedBox(width: 480, child: Text(l.heroSubtitle, style: AppTextStyles.bodyAr.copyWith(fontSize: 16))),
          const SizedBox(height: 36),
          Wrap(spacing: 16, children: [
            AppButton.primary(label: l.heroCtaPrimary, onPressed: () {}), // TODO: context.go('/estimator')
            AppButton.secondary(label: l.heroCtaSecondary, onPressed: () {}), // TODO: context.go('/projects')
          ]),
        ],
      );

      final visual = AspectRatio(aspectRatio: 1.1, child: NetworkImagePlaceholder(label: l.heroPhotoLabel));

      return Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: isMobile ? 50 : 90),
        decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.border))),
        child: isMobile
            ? Column(children: [content, const SizedBox(height: 32), visual])
            : Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Expanded(flex: 11, child: content),
          const SizedBox(width: 40),
          Expanded(flex: 9, child: visual),
        ]),
      );
    });
  }
}