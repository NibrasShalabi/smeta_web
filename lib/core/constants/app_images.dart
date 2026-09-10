// core/widgets/network_image_placeholder.dart
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class NetworkImagePlaceholder extends StatelessWidget {
  final String? imageUrl;
  final String label;
  const NetworkImagePlaceholder({super.key, this.imageUrl, required this.label});

  @override
  Widget build(BuildContext context) {
    if (imageUrl != null) return Image.network(imageUrl!, fit: BoxFit.cover);
    return Container(
      color: AppColors.navySurface,
      alignment: Alignment.center,
      child: Text(label, style: AppTextStyles.bodyAr.copyWith(fontSize: 13)),
    );
  }
}