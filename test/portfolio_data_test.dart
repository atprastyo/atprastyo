import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_profile/core/localization/app_localizations.dart';
import 'package:my_profile/core/settings/app_settings.dart';
import 'package:my_profile/data/portfolio_data.dart';

void main() {
  group('PortfolioData Tests', () {
    test('Profile information is valid and complete', () {
      const profile = PortfolioData.profile;
      expect(profile.name.isNotEmpty, true);
      expect(profile.title.isNotEmpty, true);
      expect(profile.email.contains('@'), true);
      expect(profile.phone.isNotEmpty, true);
      expect(profile.location.isNotEmpty, true);
      expect(profile.about.isNotEmpty, true);
      expect(profile.areasOfExpertise.isNotEmpty, true);
    });

    test('Experiences list contains entries with tasks', () {
      const experiences = PortfolioData.experiences;
      expect(experiences.isNotEmpty, true);
      for (final exp in experiences) {
        expect(exp.title.isNotEmpty, true);
        expect(exp.period.isNotEmpty, true);
        expect(exp.tasks.isNotEmpty, true);
      }
    });

    test('Skills list has names and durations', () {
      final skills = PortfolioData.skills;
      expect(skills.isNotEmpty, true);
      for (final skill in skills) {
        expect(skill.name.isNotEmpty, true);
        expect(skill.duration.isNotEmpty, true);
      }
    });

    test('Links list contains valid URLs', () {
      final links = PortfolioData.links;
      expect(links.isNotEmpty, true);
      for (final link in links) {
        expect(link.title.isNotEmpty, true);
        expect(link.url.startsWith('http'), true);
      }
    });

    test('Education details are present', () {
      const education = PortfolioData.education;
      expect(education.institution.isNotEmpty, true);
      expect(education.degree.isNotEmpty, true);
      expect(education.gpa.isNotEmpty, true);
    });

    test('Indonesian localization delivers localized portfolio copy', () {
      final l10nId = AppLocalizations(const Locale('id'));
      final idProfile = PortfolioData.getProfile(l10nId);
      final idExperiences = PortfolioData.getExperiences(l10nId);
      final idSkills = PortfolioData.getSkills(l10nId);

      expect(l10nId.isIndonesian, true);
      expect(idProfile.title, 'Software Engineer Mobile');
      expect(idExperiences.first.title.contains('di Paper.id'), true);
      expect(idSkills.first.duration.contains('Tahun'), true);
    });
  });

  group('AppSettingsController Tests', () {
    test('Controller toggles theme and locale correctly', () {
      final controller = AppSettingsController(
        initialThemeMode: ThemeMode.light,
        initialLocale: const Locale('en'),
      );

      expect(controller.themeMode, ThemeMode.light);
      expect(controller.locale.languageCode, 'en');

      controller.toggleLocale();
      expect(controller.locale.languageCode, 'id');

      controller.setThemeMode(ThemeMode.dark);
      expect(controller.themeMode, ThemeMode.dark);
    });
  });
}
