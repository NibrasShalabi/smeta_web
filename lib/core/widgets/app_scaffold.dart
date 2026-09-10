// core/widgets/app_scaffold.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';
import '../localization/l10n_extension.dart';
import '../localization/locale_provider.dart';
import '../localization/supported_locales.dart';
import 'app_breakpoints.dart';
import 'app_nav_links.dart';
import 'app_nav_drawer.dart';

class AppScaffold extends ConsumerWidget {
  final Widget body;
  const AppScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMobile = AppBreakpoints.isMobile(MediaQuery.of(context).size.width);
    final l = context.l10n;
    final locale = ref.watch(localeProvider);

    return Scaffold(
      backgroundColor: AppColors.navy,
      drawer: isMobile ? const AppNavDrawer() : null,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(72),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: AppColors.gold, width: 1)), // ← الحد الذهبي
          ),
          child: AppBar(
            backgroundColor: AppColors.navy,
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
                Text(l.appName, style: AppTextStyles.headlineAr.copyWith(fontSize: 40, color: AppColors.gold)),
                if (!isMobile) const AppNavLinks(),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => ref.read(localeProvider.notifier).state =
                locale == SupportedLocales.ar ? SupportedLocales.en : SupportedLocales.ar,
                child: Text(
                  locale == SupportedLocales.ar ? 'EN' : 'عربي',
                  style: AppTextStyles.bodyAr.copyWith(color: AppColors.textPrimary, fontSize: 13),
                ),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ),
      ),
      body: body,
    );
  }
}