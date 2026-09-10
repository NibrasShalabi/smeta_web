// core/widgets/whatsapp_floating_button.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/app_colors.dart';

class WhatsAppFloatingButton extends StatelessWidget {
  const WhatsAppFloatingButton({super.key});

  static const _phone = '963XXXXXXXXX'; // TODO: رقم واتساب الشركة الفعلي

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 24, left: 24,
      child: FloatingActionButton(
        backgroundColor: AppColors.success,
        shape: const CircleBorder(),
        onPressed: () => launchUrl(Uri.parse('https://wa.me/$_phone')),
        child: const Icon(Icons.chat, color: Colors.white),
      ),
    );
  }
}