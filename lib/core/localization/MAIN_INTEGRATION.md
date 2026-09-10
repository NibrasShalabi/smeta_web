# Localization setup - one-time manual step

pubspec.yaml dependencies (added automatically by nibras_setup):
flutter_localizations (sdk) + intl

Add this to your MaterialApp (in main.dart):

```dart
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'core/localization/supported_locales.dart';

MaterialApp(
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: supportedLocales,
  // ...
)
```

Use a translated string anywhere with:
```dart
AppLocalizations.of(context)!.welcomeMessage
```

Add new text: put the key in BOTH lib/l10n/app_en.arb and lib/l10n/app_ar.arb,
then run `flutter gen-l10n` (or just `flutter run`) to regenerate
AppLocalizations with the new getter.
