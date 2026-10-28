import 'package:flutter/material.dart';

/// Supported locales and localized strings for the application.
class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('id'),
  ];

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations) ??
        AppLocalizations(const Locale('en'));
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  bool get isIndonesian => locale.languageCode == 'id';

  // Navigation / Control Strings
  String get theme => isIndonesian ? 'Tema' : 'Theme';
  String get lightMode => isIndonesian ? 'Terang' : 'Light';
  String get darkMode => isIndonesian ? 'Gelap' : 'Dark';
  String get systemMode => isIndonesian ? 'Sistem' : 'System';
  String get language => isIndonesian ? 'Bahasa' : 'Language';
  String get english => 'English';
  String get indonesian => 'Bahasa Indonesia';
  String get currentLangCode => isIndonesian ? 'ID' : 'EN';

  // Section Headers
  String get aboutMe => isIndonesian ? 'Tentang Saya' : 'About Me';
  String get experience => isIndonesian ? 'Pengalaman' : 'Experience';
  String get education => isIndonesian ? 'Pendidikan' : 'Education';
  String get skills => isIndonesian ? 'Keahlian' : 'Skills';
  String get links => isIndonesian ? 'Tautan' : 'Links';
  String get areasOfExpertise =>
      isIndonesian ? 'Bidang Keahlian' : 'Areas of expertise';
  String get technology => isIndonesian ? 'Teknologi' : 'Technology';
  String get skillLabel => isIndonesian ? 'Keahlian' : 'Skill';
  String get viewProjects => isIndonesian ? 'Lihat Proyek' : 'View Projects';
  String get responsibilities =>
      isIndonesian ? 'Tanggung jawab saya:' : 'My responsibilities:';

  // Footer Strings
  String get createdWith => isIndonesian ? 'Dibuat dengan Flutter' : 'Created with Flutter';
  String get updatedDate =>
      isIndonesian ? 'Diperbarui pada November, 2024' : 'Updated at November, 2024';

  // Personal Info Translations
  String get jobTitle =>
      isIndonesian ? 'Software Engineer Mobile' : 'Software Engineer';
  String get location =>
      'Kedung losari, Tembelang, Jombang, Jawa Timur, Indonesia, 61452';

  String get bio => isIndonesian
      ? 'Software engineer berpengalaman dengan spesialisasi pengembangan aplikasi mobile multi-platform. '
          'Saya memiliki passion dalam mengembangkan solusi inovatif untuk sektor finansial dan edukasi. '
          '\nSaat ini, saya mengembangkan aplikasi mobile menggunakan Flutter dengan integrasi REST & GraphQL API, '
          'serta berpengalaman dalam pengembangan backend menggunakan Golang dan Node.js.'
      : 'Experienced software engineer with a focus on cross-platform mobile application development. '
          'I am a person who is passionate about developing innovative solutions for the financial and education sector. '
          '\nCurrently, I\'m developing a mobile app using Flutter with API service integration and then about the backend '
          'I\'ve been working on it using Golang and Node.js.';

  String get expertiseSummary => isIndonesian
      ? 'Pengembangan Aplikasi Mobile, Pengembangan API Layanan, Manajemen Tim'
      : 'Mobile app development, Software API development, Team management';

  // Education Details
  String get educationInstitution =>
      isIndonesian
          ? 'Politeknik Elektronika Negeri Surabaya (PENS)'
          : 'Electronic Engineering Polytechnic Institute of Surabaya';
  String get educationDegree =>
      isIndonesian
          ? 'Sarjana Terapan Sains - D4 Teknik Informatika/Game'
          : 'Bachelor of Applied Science - BASc';
  String get educationPeriod =>
      isIndonesian ? 'Agustus 2014 – Agustus 2018' : 'August 2014 – August 2018';
  String get educationDescription => isIndonesian
      ? 'Mempelajari dasar rekayasa perangkat lunak, teknologi game, pemodelan sistem, serta arsitektur komputasi. '
          'Menyelesaikan tugas akhir bidang Content Management System & Graphic Rendering berjudul '
          '“3D Inventory Information System Game Technology Laboratory using Structure Sensor” dengan IPK 3.52 / 4.00.'
      : 'Learned foundational software engineering, game mechanics, and scalable system design. '
          'Completed final project in content management system and graphic rendering titled '
          '“3D Inventory Information System Game Technology Laboratory using Structure Sensor” and graduated with GPA of 3.52/4.00.';
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'id'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
