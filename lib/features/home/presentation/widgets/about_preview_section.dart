// features/home/presentation/widgets/about_preview_section.dart
import 'package:flutter/material.dart';
import '../../../../core/widgets/network_image_placeholder.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/widgets/app_breakpoints.dart';
import '../../../../core/widgets/staggered_reveal.dart';

class AboutPreviewSection extends StatelessWidget {
  const AboutPreviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final figs = [l.aboutFig1, l.aboutFig2, l.aboutFig3];
    final photo = AspectRatio(
      aspectRatio: 1.1,
      child: NetworkImagePlaceholder(label: l.aboutPhotoLabel),
    );
    final text = StaggeredReveal(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(width: 56, height: 3, color: AppColors.gold),
            const SizedBox(height: 20),
            Text(
              l.aboutTitle,
              style: AppTextStyles.headlineAr.copyWith(fontSize: 32),
            ),
            const SizedBox(height: 18),
            Text(
              l.aboutParagraph1,
              style: AppTextStyles.bodyAr.copyWith(fontSize: 15.5),
            ),
            const SizedBox(height: 12),
            Text(
              l.aboutParagraph2,
              style: AppTextStyles.bodyAr.copyWith(fontSize: 15.5),
            ),
            const SizedBox(height: 28),
            for (int i = 0; i < figs.length; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: Row(
                  children: [
                    Text(
                      '0${i + 1}',
                      style: AppTextStyles.headlineAr.copyWith(
                        fontSize: 22,
                        color: AppColors.gold,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        figs[i],
                        style: AppTextStyles.bodyAr.copyWith(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ],
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: LayoutBuilder(
        builder: (_, c) {
          final isMobile = AppBreakpoints.isMobile(c.maxWidth);
          return isMobile
              ? Column(children: [photo, const SizedBox(height: 32), text])
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: c.maxWidth * .38, child: photo),
                    const SizedBox(width: 50),
                    Expanded(child: text),
                  ],
                );
        },
      ),
    );
  }
}
