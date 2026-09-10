// features/home/presentation/widgets/why_us_section.dart
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/widgets/app_breakpoints.dart';
import '../../../../core/widgets/section_header.dart';

class WhyUsSection extends StatelessWidget {
  const WhyUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final items = [(l.why1Title, l.why1Desc), (l.why2Title, l.why2Desc), (l.why3Title, l.why3Desc), (l.why4Title, l.why4Desc)];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(children: [
        SectionHeader(title: l.whyUsTitle, subtitle: l.whyUsSubtitle),
        const SizedBox(height: 44),
        LayoutBuilder(builder: (_, c) {
          final cols = AppBreakpoints.isMobile(c.maxWidth) ? 1 : (AppBreakpoints.isTablet(c.maxWidth) ? 2 : 4);
          return GridView.count(
            crossAxisCount: cols, shrinkWrap: true, physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 1, crossAxisSpacing: 1, childAspectRatio: 1.3,
            children: [
              for (int i = 0; i < items.length; i++)
                Container(
                  color: AppColors.navySurface,
                  padding: const EdgeInsets.all(24),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(width: 40, height: 40, alignment: Alignment.center,
                        decoration: BoxDecoration(border: Border.all(color: AppColors.gold, width: 1.5)),
                        child: Text('${i + 1}', style: TextStyle(color: AppColors.gold))),
                    const SizedBox(height: 16),
                    Text(items[i].$1, style: AppTextStyles.bodyAr.copyWith(color: AppColors.textPrimary, fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 8),
                    Text(items[i].$2, style: AppTextStyles.bodyAr.copyWith(fontSize: 13)),
                  ]),
                ),
            ],
          );
        }),
      ]),
    );
  }
}