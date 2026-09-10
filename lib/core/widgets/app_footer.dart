// core/widgets/app_footer.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';
import '../localization/l10n_extension.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  static const _socials = [
    (Icons.facebook, 'https://facebook.com/alwalid'),      // TODO: روابط فعلية
    (Icons.camera_alt, 'https://instagram.com/alwalid'),
    (Icons.business_center, 'https://linkedin.com/company/alwalid'),
  ];

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 60, 24, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // ← بدل center الافتراضي
        children: [
          Wrap(runSpacing: 32, crossAxisAlignment: WrapCrossAlignment.start, children: [
            SizedBox(width: 280, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(l.appName, style: AppTextStyles.headlineAr.copyWith(fontSize: 24, color: AppColors.gold)),
              const SizedBox(height: 10),
              Text(l.footerTagline, style: AppTextStyles.bodyAr.copyWith(fontSize: 13)),
              const SizedBox(height: 18),
              Row(children: [
                for (final s in _socials)
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 12),
                    child: InkWell(
                      onTap: () => launchUrl(Uri.parse(s.$2)),
                      child: Container(
                        width: 36, height: 36,
                        decoration: BoxDecoration(border: Border.all(color: AppColors.border)),
                        alignment: Alignment.center,
                        child: Icon(s.$1, size: 16, color: AppColors.textSecondary),
                      ),
                    ),
                  ),
              ]),
            ])),
            _col(l.footerCompanyHeader, [l.navAbout, l.navProjects, l.navContact]),
            _col(l.footerEquipmentHeader, [l.navRental, l.navSales]),
          ]),
          const Divider(color: AppColors.border, height: 60),
          Text(l.copyrightText, style: AppTextStyles.bodyAr.copyWith(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _col(String title, List<String> items) => SizedBox(
    width: 160,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(title, style: AppTextStyles.bodyAr.copyWith(fontSize: 13, color: AppColors.textSecondary)),
      const SizedBox(height: 14),
      for (final i in items) Padding(padding: const EdgeInsets.only(bottom: 10), child: Text(i, style: AppTextStyles.bodyAr.copyWith(color: AppColors.textPrimary, fontSize: 14))),
    ]),
  );
}