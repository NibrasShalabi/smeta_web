import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/localization/locale_provider.dart';
import 'core/theme/app_colors.dart';
import 'core/theme/app_text_styles.dart';
import 'core/localization/supported_locales.dart';
import 'core/router/app_router.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(const ProviderScope(child: SmetaApp()));
}

class SmetaApp extends ConsumerWidget {
  const SmetaApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Alwalid',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.navy,
        colorScheme: const ColorScheme.dark(
          primary: AppColors.gold,
          surface: AppColors.navySurface,
          error: AppColors.error,
        ),
        textTheme: TextTheme(
          headlineLarge: AppTextStyles.headlineAr,
          bodyMedium: AppTextStyles.bodyAr,
        ),
        dividerColor: AppColors.border,
      ),
      locale: locale, // ← أضف هاد السطر
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: SupportedLocales.all, // [Locale('ar'), Locale('en')]
      routerConfig: AppRouter.router,
    );
  }
}