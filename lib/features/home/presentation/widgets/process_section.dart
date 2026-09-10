// features/home/presentation/widgets/process_section.dart
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/widgets/app_breakpoints.dart';
import '../../../../core/widgets/section_header.dart';
import '../../../../core/widgets/staggered_reveal.dart';

class ProcessSection extends StatelessWidget {
  const ProcessSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final steps = [(l.step1Title, l.step1Desc), (l.step2Title, l.step2Desc), (l.step3Title, l.step3Desc), (l.step4Title, l.step4Desc)];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(children: [
        SectionHeader(title: l.processTitle, subtitle: l.processSubtitle),
        const SizedBox(height: 50),
        LayoutBuilder(builder: (_, c) {
          final isMobile = AppBreakpoints.isMobile(c.maxWidth);
          final children = [
            for (final s in steps)
              SizedBox(
                width: isMobile ? c.maxWidth : c.maxWidth / 4 - 24,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: StaggeredReveal(
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Container(width: 11, height: 11, decoration: const BoxDecoration(color: AppColors.gold, shape: BoxShape.circle)),
                        const SizedBox(height: 20),
                        Text(s.$1, style: AppTextStyles.bodyAr.copyWith(color: AppColors.textPrimary, fontWeight: FontWeight.bold, fontSize: 16)),
                        const SizedBox(height: 8),
                        Text(s.$2, style: AppTextStyles.bodyAr.copyWith(fontSize: 13)),
                      ]),
                    ],
                  ),
                ),
              ),
          ];
          return isMobile
              ? Column(children: [for (final c in children) Padding(padding: const EdgeInsets.only(bottom: 32), child: c)])
              : Row(children: children);
        }),
      ]),
    );
  }
}