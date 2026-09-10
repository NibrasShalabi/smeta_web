// features/home/presentation/widgets/director_quote_section.dart
import 'package:flutter/material.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/widgets/app_breakpoints.dart';

class DirectorQuoteSection extends StatelessWidget {
  const DirectorQuoteSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final photo = AspectRatio(aspectRatio: 1, child: NetworkImagePlaceholder(label: l.directorPhoto));
    final text = Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('"${l.directorQuote}"', style: AppTextStyles.headlineAr.copyWith(fontSize: 24, height: 1.6)),
      const SizedBox(height: 24),
      Text(l.directorName, style: AppTextStyles.bodyAr.copyWith(color: AppColors.textPrimary, fontWeight: FontWeight.bold)),
      Text(l.directorRole, style: AppTextStyles.bodyAr.copyWith(fontSize: 13)),
    ]);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: LayoutBuilder(builder: (_, c) {
        final isMobile = AppBreakpoints.isMobile(c.maxWidth);
        return isMobile
            ? Column(children: [SizedBox(width: 200, child: photo), const SizedBox(height: 28), text])
            : Row(crossAxisAlignment: CrossAxisAlignment.center, children: [SizedBox(width: c.maxWidth * .22, child: photo), const SizedBox(width: 50), Expanded(child: text)]);
      }),
    );
  }
}