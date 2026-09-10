// core/theme/app_colors.dart
import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Brand
  static const gold = Color(0xFFC9A24B);        // ذهبي أساسي
  static const goldDark = Color(0xFF9C7B34);     // hover/pressed
  static const goldLight = Color(0xFFE3C97C);    // تمييز خفيف

  static const navy = Color(0xFF0B1930);         // كحلي عميق - خلفية أساسية
  static const navySurface = Color(0xFF13233F);  // سطح مرتفع (كروت)
  static const navySurface2 = Color(0xFF1A2E4F);

  static const grey = Color(0xFF8A8F98);         // رمادي - نص ثانوي
  static const greyLight = Color(0xFFB8BCC4);

  // Text
  static const textPrimary = Color(0xFFF3F1EC);
  static const textSecondary = grey;

  // Semantic
  static const success = Color(0xFF3C9D6E);
  static const error = Color(0xFFC0392B);
  static const border = Color(0xFF23324F);
}