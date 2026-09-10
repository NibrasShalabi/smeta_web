// core/localization/locale_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'supported_locales.dart';

final localeProvider = StateProvider<Locale>((ref) => SupportedLocales.ar);