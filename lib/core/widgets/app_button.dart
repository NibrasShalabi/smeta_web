import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool _primary;

  const AppButton.primary({super.key, required this.label, required this.onPressed}) : _primary = true;
  const AppButton.secondary({super.key, required this.label, required this.onPressed}) : _primary = false;

  @override
  Widget build(BuildContext context) {
    return _primary
        ? FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.gold,
        foregroundColor: AppColors.navy,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 17),
        shape: const RoundedRectangleBorder(),
      ),
      onPressed: onPressed,
      child: Text(label),
    )
        : OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.textPrimary,
        side: const BorderSide(color: AppColors.border),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 17),
        shape: const RoundedRectangleBorder(),
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}