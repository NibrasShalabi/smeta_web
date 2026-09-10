// features/home/presentation/widgets/stats_section.dart
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/l10n_extension.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final stats = [(120, l.statsProjects), (15, l.statsYears), (40, l.statsEngineers), (98, l.statsSatisfaction)];
    return Container(
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.border))),
      child: Row(
        children: [
          for (final s in stats)
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 44),
                decoration: BoxDecoration(border: Border(right: BorderSide(color: stats.last == s ? Colors.transparent : AppColors.border))),
                child: Column(children: [
                  TweenAnimationBuilder<int>(
                    tween: IntTween(begin: 0, end: s.$1),
                    duration: const Duration(milliseconds: 1200),
                    builder: (_, v, __) => Text('+$v', style: AppTextStyles.headlineAr.copyWith(fontSize: 38, color: AppColors.gold)),
                  ),
                  const SizedBox(height: 6),
                  Text(s.$2, style: AppTextStyles.bodyAr.copyWith(fontSize: 13)),
                ]),
              ),
            ),
        ],
      ),
    );
  }
}