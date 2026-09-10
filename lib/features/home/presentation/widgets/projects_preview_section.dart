// features/home/presentation/widgets/projects_preview_section.dart
import 'package:flutter/material.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/widgets/app_breakpoints.dart';
import '../../../../core/widgets/section_header.dart';

class ProjectsPreviewSection extends StatelessWidget {
  const ProjectsPreviewSection({super.key});

  Widget _card(BuildContext ctx, String tag, String title, String photo, double height) {
    return SizedBox(
      height: height,
      child: Stack(fit: StackFit.expand, children: [
        NetworkImagePlaceholder(label: photo),
        Container(
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.bottomCenter, end: Alignment.topCenter, colors: [Colors.black.withValues(alpha: .7), Colors.transparent])),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Text(tag, style: const TextStyle(color: AppColors.gold, fontSize: 12)),
            Text(title, style: AppTextStyles.headlineAr.copyWith(fontSize: 19)),
          ]),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(children: [
        SectionHeader(title: l.projectsTitle, subtitle: l.projectsSubtitle),
        const SizedBox(height: 44),
        LayoutBuilder(builder: (_, c) {
          final isMobile = AppBreakpoints.isMobile(c.maxWidth);
          final big = _card(context, l.project1Tag, l.project1Title, l.projectPhoto, 340);
          final small = Column(children: [
            _card(context, l.project2Tag, l.project2Title, l.projectPhoto, 169),
            const SizedBox(height: 2),
            _card(context, l.project3Tag, l.project3Title, l.projectPhoto, 169),
          ]);
          return isMobile
              ? Column(children: [big, const SizedBox(height: 2), small])
              : Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Expanded(flex: 13, child: big), const SizedBox(width: 2), Expanded(flex: 10, child: small)]);
        }),
      ]),
    );
  }
}