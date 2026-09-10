// features/home/presentation/widgets/map_section.dart
import 'package:flutter/material.dart';
import '../../../../core/widgets/network_image_placeholder.dart';
import '../../../../core/localization/l10n_extension.dart';

class MapSection extends StatelessWidget {
  const MapSection({super.key});
  @override
  Widget build(BuildContext context) => SizedBox(height: 320, child: NetworkImagePlaceholder(label: context.l10n.mapPlaceholder));
}