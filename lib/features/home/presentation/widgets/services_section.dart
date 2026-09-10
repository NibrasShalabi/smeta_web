// features/home/presentation/widgets/services_section.dart
import 'package:flutter/material.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/widgets/app_breakpoints.dart';
import '../../../../core/widgets/section_header.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final items = [(l.service1Title, l.service1Desc, l.service1Photo), (l.service2Title, l.service2Desc, l.service2Photo), (l.service3Title, l.service3Desc, l.service3Photo)];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(children: [
        SectionHeader(title: l.servicesTitle, subtitle: l.servicesSubtitle),
        const SizedBox(height: 44),
        LayoutBuilder(builder: (_, c) {
          final isMobile = AppBreakpoints.isMobile(c.maxWidth);
          final cards = [
            for (final it in items)
              SizedBox(
                width: isMobile ? c.maxWidth : c.maxWidth / 3 - 16,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  AspectRatio(aspectRatio: 1.4, child: NetworkImagePlaceholder(label: it.$3)),
                  const SizedBox(height: 16),
                  Text(it.$1, style: AppTextStyles.headlineAr.copyWith(fontSize: 19)),
                  const SizedBox(height: 8),
                  Text(it.$2, style: AppTextStyles.bodyAr.copyWith(fontSize: 13.5)),
                ]),
              ),
          ];
          return isMobile
              ? Column(children: [for (final c in cards) Padding(padding: const EdgeInsets.only(bottom: 32), child: c)])
              : Row(crossAxisAlignment: CrossAxisAlignment.start, children: cards);
        }),
      ]),
    );
  }
}