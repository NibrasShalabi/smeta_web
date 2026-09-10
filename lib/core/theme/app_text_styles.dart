// core/theme/app_text_styles.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle headlineAr = GoogleFonts.amiri(
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
    height: 1.3,
  );

  static TextStyle headlineEn = GoogleFonts.playfairDisplay(
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
    height: 1.3,
  );

  static TextStyle bodyAr = GoogleFonts.tajawal(
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    height: 1.65,
  );

  static TextStyle bodyEn = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    height: 1.65,
  );
}