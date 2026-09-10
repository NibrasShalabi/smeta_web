import 'package:flutter/material.dart';
import '../../../../core/widgets/reveal_on_scroll.dart';
import '../widgets/hero_section.dart';
import '../widgets/trust_strip_section.dart';
import '../widgets/stats_section.dart';
import '../widgets/about_preview_section.dart';
import '../widgets/why_us_section.dart';
import '../widgets/process_section.dart';
import '../widgets/services_section.dart';
import '../widgets/projects_preview_section.dart';
import '../widgets/director_quote_section.dart';
import '../widgets/cta_estimator_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/map_section.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/app_footer.dart';
import '../../../../core/widgets/whatsapp_floating_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const _sections = [
    HeroSection(), TrustStripSection(), StatsSection(), AboutPreviewSection(),
    WhyUsSection(), ProcessSection(), ServicesSection(), ProjectsPreviewSection(),
    DirectorQuoteSection(), CtaEstimatorSection(), ContactSection(), MapSection(),
  ];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(children: [
            for (int i = 0; i < _sections.length; i++)
              i == 0 ? _sections[i] : RevealOnScroll(index: i, child: _sections[i]), // Hero بدون تأخير، الباقي بأنيميشن
            const AppFooter(),
          ]),
        ),
        const WhatsAppFloatingButton(),
      ]),
    );
  }
}