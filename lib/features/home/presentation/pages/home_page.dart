import 'package:flutter/material.dart';
import '../widgets/hero_section.dart';
import '../widgets/trust_strip_section.dart';
import '../widgets/stats_section.dart';
import '../widgets/about_preview_section.dart';
import '../widgets/why_us_section.dart';
import '../widgets/process_section.dart';
import '../widgets/services_section.dart';
import '../widgets/projects_preview_section.dart';
import '../widgets/partners_section.dart';
import '../widgets/director_quote_section.dart';
import '../widgets/cta_estimator_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/map_section.dart';
import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/app_footer.dart';
import '../../../../core/widgets/whatsapp_floating_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Stack(children: [
        const SingleChildScrollView(
          child: Column(children: [
            HeroSection(), TrustStripSection(), StatsSection(), AboutPreviewSection(),
            WhyUsSection(), ProcessSection(), ServicesSection(), ProjectsPreviewSection(),
            PartnersSection(), DirectorQuoteSection(), CtaEstimatorSection(),
            ContactSection(), MapSection(), AppFooter(),
          ]),
        ),
        const WhatsAppFloatingButton(),
      ]),
    );
  }
}