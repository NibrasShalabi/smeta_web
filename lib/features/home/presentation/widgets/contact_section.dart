// features/home/presentation/widgets/contact_section.dart
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/staggered_reveal.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});
  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _name = TextEditingController();
  final _phone = TextEditingController();
  final _message = TextEditingController();
  String? _service;

  InputDecoration _dec(String hint) => InputDecoration(
    hintText: hint, filled: true, fillColor: AppColors.navy,
    border: const OutlineInputBorder(borderRadius: BorderRadius.zero, borderSide: BorderSide(color: AppColors.border)),
  );

  Widget _infoRow(String label, String value) => Container(
    padding: const EdgeInsets.symmetric(vertical: 16),
    decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.border))),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(label, style: AppTextStyles.bodyAr.copyWith(fontSize: 13)),
      Text(value, style: AppTextStyles.bodyAr.copyWith(color: AppColors.textPrimary, fontSize: 14)),
    ]),
  );

  static const _cornerSize = 30.0;
  Widget _corner({required bool top, required bool start}) => Positioned(
    top: top ? -8 : null, bottom: top ? null : -8,
    left: start ? -8 : null, right: start ? null : -8,
    child: Container(
      width: _cornerSize, height: _cornerSize,
      decoration: BoxDecoration(border: Border(
        top: top ? const BorderSide(color: AppColors.gold, width: 2) : BorderSide.none,
        bottom: !top ? const BorderSide(color: AppColors.gold, width: 2) : BorderSide.none,
        left: start ? const BorderSide(color: AppColors.gold, width: 2) : BorderSide.none,
        right: !start ? const BorderSide(color: AppColors.gold, width: 2) : BorderSide.none,
      )),
    ),
  );

  Widget _verticalDivider() => SizedBox(
    width: 1,
    child: Stack(clipBehavior: Clip.none, alignment: Alignment.center, children: [
      Container(width: 1, color: AppColors.border),
      Container(
        color: AppColors.navySurface, padding: const EdgeInsets.symmetric(vertical: 6),
        child: const Text('◆', style: TextStyle(color: AppColors.gold, fontSize: 12)),
      ),
    ]),
  );

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;

    final info = StaggeredReveal(
      children: [
        StaggeredReveal(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                Container(width: 22, height: 1, color: AppColors.gold),
                const SizedBox(width: 10),
                Text(l.contactTitle, style: AppTextStyles.bodyAr.copyWith(color: AppColors.gold, fontSize: 13)),
              ]),
              const SizedBox(height: 18),
              Text(l.contactHeadline, style: AppTextStyles.headlineAr.copyWith(fontSize: 28)),
              const SizedBox(height: 14),
              Text(l.contactSubtitle, style: AppTextStyles.bodyAr.copyWith(fontSize: 14)),
              const SizedBox(height: 30),
              _infoRow(l.contactAddressLabel, l.contactAddressValue),
              _infoRow(l.contactPhoneLabel, '+963 XXX XXX XXX'),
              _infoRow(l.contactEmailLabel, 'info@smeta.sy'),
              _infoRow(l.contactHoursLabel, l.contactHoursValue),
            ]),
          ],
        ),
      ],
    );

    final form = Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Row(children: [
        Expanded(child: TextField(controller: _name, style: AppTextStyles.bodyAr, decoration: _dec(l.contactFormName))),
        const SizedBox(width: 16),
        Expanded(child: TextField(controller: _phone, style: AppTextStyles.bodyAr, decoration: _dec(l.contactFormPhone))),
      ]),
      const SizedBox(height: 16),
      DropdownButtonFormField<String>(
        initialValue: _service, decoration: _dec(l.contactFormServiceHint),
        items: <String>[l.service1Title, l.service2Title, l.service3Title]
            .map<DropdownMenuItem<String>>((s) => DropdownMenuItem<String>(value: s, child: Text(s)))
            .toList(),
        onChanged: (v) => setState(() => _service = v),
      ),
      const SizedBox(height: 16),
      TextField(controller: _message, maxLines: 4, style: AppTextStyles.bodyAr, decoration: _dec(l.contactFormMessageHint)),
      const SizedBox(height: 20),
      AppButton.primary(label: l.contactFormSubmit, onPressed: () {}),
    ]);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 90),
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1040), // ← مسافة يمين/يسار على الشاشات الكبيرة
        child: Stack(clipBehavior: Clip.none, children: [
          _corner(top: true, start: true), _corner(top: true, start: false),
          _corner(top: false, start: true), _corner(top: false, start: false),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 56),
            decoration: BoxDecoration(
              color: AppColors.navySurface,
              border: Border.all(color: AppColors.border),
              boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: .45), blurRadius: 80, offset: const Offset(0, 40))],
            ),
            child: IntrinsicHeight(
              child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                Expanded(child: info),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 48), child: _verticalDivider()),
                Expanded(child: form),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}