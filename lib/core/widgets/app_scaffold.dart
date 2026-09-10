// core/widgets/app_scaffold.dart - نسخة نهائية كاملة
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';
import '../localization/l10n_extension.dart';
import 'app_breakpoints.dart';
import 'app_nav_links.dart';
import 'app_nav_drawer.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;
  const AppScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    final isMobile = AppBreakpoints.isMobile(MediaQuery.of(context).size.width);
    final l = context.l10n;

    return Scaffold(
      backgroundColor: AppColors.navy,
      drawer: isMobile ? const AppNavDrawer() : null,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(72),
        child: AppBar(
          backgroundColor: AppColors.navy.withValues(alpha: .92),
          elevation: 0,
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
          leading: isMobile
              ? Builder(builder: (ctx) => IconButton(
            icon: const Icon(Icons.menu, color: AppColors.textPrimary),
            onPressed: () => Scaffold.of(ctx).openDrawer(),
          ))
              : null,
          title: Row(
            mainAxisAlignment: isMobile ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
            children: [
              Text(l.appName, style: AppTextStyles.headlineAr.copyWith(fontSize: 21, color: AppColors.gold)),
              if (!isMobile) const AppNavLinks(),
            ],
          ),
        ),
      ),
      body: body,
    );
  }
}