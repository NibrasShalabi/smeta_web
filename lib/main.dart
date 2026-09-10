import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'core/theme/app_colors.dart';
import 'core/theme/app_text_styles.dart';
import 'core/localization/supported_locales.dart';
import 'core/router/app_router.dart';

void main() {
  runApp(const ProviderScope(child: AlwalidApp()));
}

class AlwalidApp extends ConsumerWidget {
  const AlwalidApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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