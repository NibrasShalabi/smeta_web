import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// The title of the application
  ///
  /// In en, this message translates to:
  /// **'My App'**
  String get appTitle;

  /// Shown on the home screen
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcomeMessage;

  /// No description provided for @navAbout.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get navAbout;

  /// No description provided for @navProjects.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get navProjects;

  /// No description provided for @navRental.
  ///
  /// In en, this message translates to:
  /// **'Rental'**
  String get navRental;

  /// No description provided for @navSales.
  ///
  /// In en, this message translates to:
  /// **'Sales'**
  String get navSales;

  /// No description provided for @navEstimator.
  ///
  /// In en, this message translates to:
  /// **'Cost Estimator'**
  String get navEstimator;

  /// No description provided for @navContact.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get navContact;

  /// No description provided for @navRequestQuote.
  ///
  /// In en, this message translates to:
  /// **'Request Quote'**
  String get navRequestQuote;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Smeta'**
  String get appName;

  /// No description provided for @trustLicense.
  ///
  /// In en, this message translates to:
  /// **'Licensed Contractor'**
  String get trustLicense;

  /// No description provided for @trustExperience.
  ///
  /// In en, this message translates to:
  /// **'15+ Years Experience'**
  String get trustExperience;

  /// No description provided for @trustTeam.
  ///
  /// In en, this message translates to:
  /// **'In-house Engineering Team'**
  String get trustTeam;

  /// No description provided for @trustWarranty.
  ///
  /// In en, this message translates to:
  /// **'Post-handover Warranty'**
  String get trustWarranty;

  /// No description provided for @statsProjects.
  ///
  /// In en, this message translates to:
  /// **'Projects Delivered'**
  String get statsProjects;

  /// No description provided for @statsYears.
  ///
  /// In en, this message translates to:
  /// **'Years of Experience'**
  String get statsYears;

  /// No description provided for @statsEngineers.
  ///
  /// In en, this message translates to:
  /// **'Engineers & Specialists'**
  String get statsEngineers;

  /// No description provided for @statsSatisfaction.
  ///
  /// In en, this message translates to:
  /// **'Client Satisfaction'**
  String get statsSatisfaction;

  /// No description provided for @aboutTitle.
  ///
  /// In en, this message translates to:
  /// **'Smeta Contracting'**
  String get aboutTitle;

  /// No description provided for @aboutParagraph1.
  ///
  /// In en, this message translates to:
  /// **'Smeta delivers integrated construction solutions — from villas and towers to equipment rental and sales.'**
  String get aboutParagraph1;

  /// No description provided for @aboutParagraph2.
  ///
  /// In en, this message translates to:
  /// **'Our engineers and technicians accompany every project from day one to final handover.'**
  String get aboutParagraph2;

  /// No description provided for @aboutFig1.
  ///
  /// In en, this message translates to:
  /// **'Precise engineering design before execution'**
  String get aboutFig1;

  /// No description provided for @aboutFig2.
  ///
  /// In en, this message translates to:
  /// **'Direct execution team, no subcontractors'**
  String get aboutFig2;

  /// No description provided for @aboutFig3.
  ///
  /// In en, this message translates to:
  /// **'Modern equipment, available for rent or in-house use'**
  String get aboutFig3;

  /// No description provided for @aboutPhotoLabel.
  ///
  /// In en, this message translates to:
  /// **'Team photo'**
  String get aboutPhotoLabel;

  /// No description provided for @whyUsTitle.
  ///
  /// In en, this message translates to:
  /// **'Why Smeta'**
  String get whyUsTitle;

  /// No description provided for @whyUsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Four things that set us apart.'**
  String get whyUsSubtitle;

  /// No description provided for @why1Title.
  ///
  /// In en, this message translates to:
  /// **'Direct Execution'**
  String get why1Title;

  /// No description provided for @why1Desc.
  ///
  /// In en, this message translates to:
  /// **'No subcontractors — our own team executes.'**
  String get why1Desc;

  /// No description provided for @why2Title.
  ///
  /// In en, this message translates to:
  /// **'Transparent Pricing'**
  String get why2Title;

  /// No description provided for @why2Desc.
  ///
  /// In en, this message translates to:
  /// **'Clear quotes, no hidden costs.'**
  String get why2Desc;

  /// No description provided for @why3Title.
  ///
  /// In en, this message translates to:
  /// **'Modern Equipment'**
  String get why3Title;

  /// No description provided for @why3Desc.
  ///
  /// In en, this message translates to:
  /// **'Company-owned equipment, also for rent.'**
  String get why3Desc;

  /// No description provided for @why4Title.
  ///
  /// In en, this message translates to:
  /// **'Post-handover Warranty'**
  String get why4Title;

  /// No description provided for @why4Desc.
  ///
  /// In en, this message translates to:
  /// **'Technical follow-up after delivery.'**
  String get why4Desc;

  /// No description provided for @processTitle.
  ///
  /// In en, this message translates to:
  /// **'How We Work'**
  String get processTitle;

  /// No description provided for @processSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Four stages, consultation to handover.'**
  String get processSubtitle;

  /// No description provided for @step1Title.
  ///
  /// In en, this message translates to:
  /// **'Consultation'**
  String get step1Title;

  /// No description provided for @step1Desc.
  ///
  /// In en, this message translates to:
  /// **'We define requirements and budget.'**
  String get step1Desc;

  /// No description provided for @step2Title.
  ///
  /// In en, this message translates to:
  /// **'Design'**
  String get step2Title;

  /// No description provided for @step2Desc.
  ///
  /// In en, this message translates to:
  /// **'Approved engineering plans and studies.'**
  String get step2Desc;

  /// No description provided for @step3Title.
  ///
  /// In en, this message translates to:
  /// **'Execution'**
  String get step3Title;

  /// No description provided for @step3Desc.
  ///
  /// In en, this message translates to:
  /// **'Daily-supervised construction.'**
  String get step3Desc;

  /// No description provided for @step4Title.
  ///
  /// In en, this message translates to:
  /// **'Handover'**
  String get step4Title;

  /// No description provided for @step4Desc.
  ///
  /// In en, this message translates to:
  /// **'Final delivery with warranty.'**
  String get step4Desc;

  /// No description provided for @servicesTitle.
  ///
  /// In en, this message translates to:
  /// **'Our Services'**
  String get servicesTitle;

  /// No description provided for @servicesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'From construction to equipment.'**
  String get servicesSubtitle;

  /// No description provided for @service1Title.
  ///
  /// In en, this message translates to:
  /// **'Villa Construction'**
  String get service1Title;

  /// No description provided for @service1Desc.
  ///
  /// In en, this message translates to:
  /// **'Residential villas, high engineering standards.'**
  String get service1Desc;

  /// No description provided for @service1Photo.
  ///
  /// In en, this message translates to:
  /// **'Villa photo'**
  String get service1Photo;

  /// No description provided for @service2Title.
  ///
  /// In en, this message translates to:
  /// **'Buildings & Towers'**
  String get service2Title;

  /// No description provided for @service2Desc.
  ///
  /// In en, this message translates to:
  /// **'Multi-story projects, groundwork to handover.'**
  String get service2Desc;

  /// No description provided for @service2Photo.
  ///
  /// In en, this message translates to:
  /// **'Tower photo'**
  String get service2Photo;

  /// No description provided for @service3Title.
  ///
  /// In en, this message translates to:
  /// **'Equipment Rental & Sales'**
  String get service3Title;

  /// No description provided for @service3Desc.
  ///
  /// In en, this message translates to:
  /// **'Electric, diesel & gas equipment.'**
  String get service3Desc;

  /// No description provided for @service3Photo.
  ///
  /// In en, this message translates to:
  /// **'Equipment photo'**
  String get service3Photo;

  /// No description provided for @projectsTitle.
  ///
  /// In en, this message translates to:
  /// **'Completed Projects'**
  String get projectsTitle;

  /// No description provided for @projectsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Samples of our previous work.'**
  String get projectsSubtitle;

  /// No description provided for @project1Tag.
  ///
  /// In en, this message translates to:
  /// **'Residential Tower'**
  String get project1Tag;

  /// No description provided for @project1Title.
  ///
  /// In en, this message translates to:
  /// **'Palm Tower — Damascus'**
  String get project1Title;

  /// No description provided for @project2Tag.
  ///
  /// In en, this message translates to:
  /// **'Villa'**
  String get project2Tag;

  /// No description provided for @project2Title.
  ///
  /// In en, this message translates to:
  /// **'Rawda Villa'**
  String get project2Title;

  /// No description provided for @project3Tag.
  ///
  /// In en, this message translates to:
  /// **'Building'**
  String get project3Tag;

  /// No description provided for @project3Title.
  ///
  /// In en, this message translates to:
  /// **'Jasmine Building'**
  String get project3Title;

  /// No description provided for @projectPhoto.
  ///
  /// In en, this message translates to:
  /// **'Project photo'**
  String get projectPhoto;

  /// No description provided for @partnersTitle.
  ///
  /// In en, this message translates to:
  /// **'Our Partners'**
  String get partnersTitle;

  /// No description provided for @directorQuote.
  ///
  /// In en, this message translates to:
  /// **'Every project bearing our name must last for generations. That\'s the principle we build on.'**
  String get directorQuote;

  /// No description provided for @directorName.
  ///
  /// In en, this message translates to:
  /// **'Director Name'**
  String get directorName;

  /// No description provided for @directorRole.
  ///
  /// In en, this message translates to:
  /// **'General Manager — Smeta Contracting'**
  String get directorRole;

  /// No description provided for @directorPhoto.
  ///
  /// In en, this message translates to:
  /// **'Director photo'**
  String get directorPhoto;

  /// No description provided for @ctaTitle.
  ///
  /// In en, this message translates to:
  /// **'Planning to build? Estimate your cost in minutes'**
  String get ctaTitle;

  /// No description provided for @ctaSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A simple interactive calculator for an initial estimate.'**
  String get ctaSubtitle;

  /// No description provided for @ctaButton.
  ///
  /// In en, this message translates to:
  /// **'Try the Calculator'**
  String get ctaButton;

  /// No description provided for @contactTitle.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactTitle;

  /// No description provided for @contactFormName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get contactFormName;

  /// No description provided for @contactFormPhone.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get contactFormPhone;

  /// No description provided for @contactFormService.
  ///
  /// In en, this message translates to:
  /// **'Service Needed'**
  String get contactFormService;

  /// No description provided for @contactFormServiceHint.
  ///
  /// In en, this message translates to:
  /// **'Select service...'**
  String get contactFormServiceHint;

  /// No description provided for @contactFormMessage.
  ///
  /// In en, this message translates to:
  /// **'Your Message'**
  String get contactFormMessage;

  /// No description provided for @contactFormMessageHint.
  ///
  /// In en, this message translates to:
  /// **'Write your request details...'**
  String get contactFormMessageHint;

  /// No description provided for @contactFormSubmit.
  ///
  /// In en, this message translates to:
  /// **'Send Message'**
  String get contactFormSubmit;

  /// No description provided for @contactAddressLabel.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get contactAddressLabel;

  /// No description provided for @contactAddressValue.
  ///
  /// In en, this message translates to:
  /// **'Damascus, Syria'**
  String get contactAddressValue;

  /// No description provided for @contactPhoneLabel.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get contactPhoneLabel;

  /// No description provided for @contactEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get contactEmailLabel;

  /// No description provided for @contactHoursLabel.
  ///
  /// In en, this message translates to:
  /// **'Working Hours'**
  String get contactHoursLabel;

  /// No description provided for @contactHoursValue.
  ///
  /// In en, this message translates to:
  /// **'Sun - Thu, 9:00 AM - 6:00 PM'**
  String get contactHoursValue;

  /// No description provided for @mapPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Company location map'**
  String get mapPlaceholder;

  /// No description provided for @footerTagline.
  ///
  /// In en, this message translates to:
  /// **'Contracting company specialized in villas, buildings, and towers.'**
  String get footerTagline;

  /// No description provided for @footerCompanyHeader.
  ///
  /// In en, this message translates to:
  /// **'Company'**
  String get footerCompanyHeader;

  /// No description provided for @footerEquipmentHeader.
  ///
  /// In en, this message translates to:
  /// **'Equipment'**
  String get footerEquipmentHeader;

  /// No description provided for @copyrightText.
  ///
  /// In en, this message translates to:
  /// **'© 2026 Smeta Contracting Company'**
  String get copyrightText;

  /// No description provided for @heroTitle.
  ///
  /// In en, this message translates to:
  /// **'We Build What Lasts\nVillas, Buildings & Towers'**
  String get heroTitle;

  /// No description provided for @heroSubtitle.
  ///
  /// In en, this message translates to:
  /// **'From engineering design to final handover, with equipment rental and sales to support your project.'**
  String get heroSubtitle;

  /// No description provided for @heroCtaPrimary.
  ///
  /// In en, this message translates to:
  /// **'Estimate Your Project'**
  String get heroCtaPrimary;

  /// No description provided for @heroCtaSecondary.
  ///
  /// In en, this message translates to:
  /// **'Browse Our Projects'**
  String get heroCtaSecondary;

  /// No description provided for @heroPhotoLabel.
  ///
  /// In en, this message translates to:
  /// **'Main project photo'**
  String get heroPhotoLabel;

  /// No description provided for @contactHeadline.
  ///
  /// In en, this message translates to:
  /// **'We\'re Here to Help'**
  String get contactHeadline;

  /// No description provided for @contactSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Whether you\'re looking for a consultation or project management — our team is ready.'**
  String get contactSubtitle;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
