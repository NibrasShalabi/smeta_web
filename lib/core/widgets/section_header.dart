import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';
import 'app_breakpoints.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String? subtitle;
  const SectionHeader({super.key, required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, c) {
      final isMobile = AppBreakpoints.isMobile(c.maxWidth);
      final head = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(width: 56, height: 3, color: AppColors.gold),
          const SizedBox(height: 20),
          Text(title, style: AppTextStyles.headlineAr.copyWith(fontSize: isMobile ? 26 : 34)),
        ],
      );
      if (subtitle == null) return head;
      final sub = Text(subtitle!, style: AppTextStyles.bodyAr.copyWith(fontSize: 14));
      return isMobile
          ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [head, const SizedBox(height: 12), sub])
          : Row(crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [head, SizedBox(width: 300, child: sub)]);
    });
  }
}