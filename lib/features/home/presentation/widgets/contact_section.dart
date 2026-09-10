// features/home/presentation/widgets/contact_section.dart
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/localization/l10n_extension.dart';
import '../../../../core/widgets/app_breakpoints.dart';
import '../../../../core/widgets/app_button.dart';

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

  InputDecoration _dec(String label, String hint) => InputDecoration(
    labelText: label, hintText: hint,
    filled: true, fillColor: AppColors.navySurface,
    border: const OutlineInputBorder(borderRadius: BorderRadius.zero, borderSide: BorderSide(color: AppColors.border)),
  );

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final form = Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Row(children: [
        Expanded(child: TextField(controller: _name, style: AppTextStyles.bodyAr, decoration: _dec(l.contactFormName, l.contactFormName))),
        const SizedBox(width: 16),
        Expanded(child: TextField(controller: _phone, style: AppTextStyles.bodyAr, decoration: _dec(l.contactFormPhone, '+963 XXX XXX XXX'))),
      ]),
      const SizedBox(height: 16),
      DropdownButtonFormField<String>(
        value: _service,
        decoration: _dec(l.contactFormService, l.contactFormServiceHint),
        items: <String>[l.service1Title, l.service2Title, l.service3Title]
            .map<DropdownMenuItem<String>>((s) => DropdownMenuItem<String>(value: s, child: Text(s)))
            .toList(),
        onChanged: (v) => setState(() => _service = v),
      ),
      const SizedBox(height: 16),
      TextField(controller: _message, maxLines: 5, style: AppTextStyles.bodyAr, decoration: _dec(l.contactFormMessage, l.contactFormMessageHint)),
      const SizedBox(height: 20),
      AppButton.primary(label: l.contactFormSubmit, onPressed: () {}), // TODO: إرسال البيانات (Firestore + واتساب)
    ]);

    final info = Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(l.contactTitle, style: AppTextStyles.headlineAr.copyWith(fontSize: 30)),
      const SizedBox(height: 30),
      _infoRow(l.contactAddressLabel, l.contactAddressValue),
      _infoRow(l.contactPhoneLabel, '+963 XXX XXX XXX'),
      _infoRow(l.contactEmailLabel, 'info@alwalid.sy'),
      _infoRow(l.contactHoursLabel, l.contactHoursValue),
    ]);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: LayoutBuilder(builder: (_, c) {
        final isMobile = AppBreakpoints.isMobile(c.maxWidth);
        return isMobile
            ? Column(children: [form, const SizedBox(height: 40), info])
            : Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Expanded(child: form), const SizedBox(width: 60), Expanded(child: info)]);
      }),
    );
  }

  Widget _infoRow(String label, String value) => Padding(
    padding: const EdgeInsets.only(bottom: 18),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(label, style: AppTextStyles.bodyAr.copyWith(fontSize: 12, color: AppColors.textSecondary)),
      const SizedBox(height: 4),
      Text(value, style: AppTextStyles.bodyAr.copyWith(color: AppColors.textPrimary, fontSize: 15)),
    ]),
  );
}