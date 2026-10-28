import 'package:flutter/material.dart';
import 'package:my_profile/core/constants/app_assets.dart';
import 'package:my_profile/core/localization/app_localizations.dart';
import 'package:my_profile/data/models/education_item.dart';
import 'package:my_profile/data/models/experience_item.dart';
import 'package:my_profile/data/models/link_item.dart';
import 'package:my_profile/data/models/profile_info.dart';
import 'package:my_profile/data/models/skill_item.dart';

/// Central data repository providing localized portfolio and CV data.
class PortfolioData {
  PortfolioData._();

  // English fallback constants
  static const ProfileInfo profile = ProfileInfo(
    name: 'Agus Tri Prastyo',
    title: 'Software Engineer',
    phone: '+6281939143915',
    email: 'agustriprastyo@gmail.com',
    location: 'Kedung losari, Tembelang, Jombang, East Java, Indonesia, 61452',
    about:
        'Experienced software engineer with a focus on cross-platform mobile application development. '
        'I am a person who is passionate about developing innovative solutions for the financial and education sector. '
        '\nCurrently, I\'m developing a mobile app using Flutter with API service integration and then about the backend '
        'I\'ve been working on it using Golang and Node.js.',
    areasOfExpertise: 'Mobile app development, Software API development, Team management',
  );

  static const List<ExperienceItem> experiences = [
    ExperienceItem(
      title: 'Software Engineer Mobile at Paper.id, Jakarta',
      period: 'August 2023 – Present',
      description:
          'Developed and maintained the mobile app platform in an agile scrum development process environment. '
          '(Fintech app, invoicing and payment)\nMy responsibilities:',
      tasks: [
        'Develop and deploy the built of mobile application.',
        'Translating mockups or wireframes design into mobile user interface code.',
        'Collaborated with cross-functional teams to ensure software met regulatory requirements.',
      ],
      technology: 'flutter, clean architecture, bloc, firebase, figma',
      skill: 'Mobile app development, Production pipeline',
      projects: [
        'https://play.google.com/store/apps/details?id=id.paper.invoicer&referrer=entry_point%3Dweb_landing%26utm_medium%3Dbanner&pli=1',
        'https://apps.apple.com/id/app/paper-id-invoice-payment/id6463997183',
      ],
    ),
    ExperienceItem(
      title: 'Software Engineer Mobile at Wahyoo, Jakarta',
      period: 'September 2019 – July 2023',
      description:
          'Developing mobile application with flutter in an agile scrum development process environment. '
          '\nMy responsibilities:',
      tasks: [
        'Develop and deploy the built of mobile application.',
        'Translating mockups or wireframes design into mobile user interface code.',
        'Manage team updates and issues that emerge during the development process.',
      ],
      technology: 'nodejs, graphql, flutter, provider, firebase, figma',
      skill: 'Team management, Mobile app development, Git',
      projects: [
        'https://play.google.com/store/apps/details?id=com.wahyoo_mobile&hl=en_US&gl=US',
        'https://play.google.com/store/apps/details?id=com.wahyoo.tkbpos&hl=en',
      ],
    ),
    ExperienceItem(
      title: 'Software Engineer at Twiscode Pte. Ltd., Surabaya',
      period: 'September 2018 – August 2019',
      description:
          'Develop mobile application with React Native in an agile scrum development process environment.'
          '\nMy responsibilities:',
      tasks: [
        'Develop and deploy the built of mobile application.',
        'Translating mockups or wireframes design into mobile user interface code.',
      ],
      technology: 'react native, androidx, kotlin, laravel rest API',
      skill: 'Team management, Mobile app development, Git',
    ),
  ];

  static const EducationItem education = EducationItem(
    institution: 'Electronic Engineering Polytechnic Institute of Surabaya',
    degree: 'Bachelor of Applied Science - BASc',
    period: 'August 2014 – August 2018',
    description:
        'Learned foundational software engineering, game mechanics, and scalable system design. '
        'Completed final project in content management system and graphic rendering titled '
        '“3D Inventory Information System Game Technology Laboratory using Structure Sensor” and graduated with GPA of 3.52/4.00.',
    gpa: '3.52/4.00',
    skills: 'android, php, nodejs, unity3d, management',
  );

  static final List<SkillItem> skills = [
    SkillItem(name: 'Flutter', duration: '> 4 Years', badgeColor: Colors.blue.shade700),
    SkillItem(name: 'Android Native', duration: '> 1 Year', badgeColor: Colors.blue.shade600),
    SkillItem(name: 'React Native', duration: '> 1 Year', badgeColor: Colors.blue.shade600),
    SkillItem(name: 'Golang', duration: '< 1 Year', badgeColor: Colors.blue.shade500),
    SkillItem(name: 'Nodejs', duration: '< 1 Year', badgeColor: Colors.blue.shade500),
    SkillItem(name: 'Git', duration: '> 5 Years', badgeColor: Colors.blue.shade600),
  ];

  static final List<LinkItem> links = [
    const LinkItem(
      title: 'linkedin.com/in/atprastyo',
      url: 'https://www.linkedin.com/in/atprastyo',
      iconAsset: AppAssets.linkedinLogo,
    ),
    LinkItem(
      title: 'github.com/atprastyo',
      url: 'https://github.com/atprastyo',
      iconAsset: AppAssets.githubLogo,
      iconColor: Colors.blue.shade600,
      iconBlendMode: BlendMode.lighten,
    ),
  ];

  static const String updatedDate = 'Updated at November, 2024';

  // Dynamic localized getters
  static ProfileInfo getProfile(AppLocalizations l10n) {
    return ProfileInfo(
      name: profile.name,
      title: l10n.jobTitle,
      phone: profile.phone,
      email: profile.email,
      location: l10n.location,
      about: l10n.bio,
      areasOfExpertise: l10n.expertiseSummary,
    );
  }

  static List<ExperienceItem> getExperiences(AppLocalizations l10n) {
    if (!l10n.isIndonesian) return experiences;

    return const [
      ExperienceItem(
        title: 'Software Engineer Mobile di Paper.id, Jakarta',
        period: 'Agustus 2023 – Sekarang',
        description:
            'Mengembangkan dan memelihara platform aplikasi mobile dalam lingkungan agile scrum. '
            '(Aplikasi fintech, penagihan & pembayaran)\nTanggung jawab saya:',
        tasks: [
          'Mengembangkan dan merilis build aplikasi mobile ke production.',
          'Menerjemahkan rancangan desain wireframe & mockup UI Figma menjadi kode Flutter.',
          'Berkolaborasi lintas tim untuk memastikan aplikasi memenuhi regulasi & standar fintech.',
        ],
        technology: 'flutter, clean architecture, bloc, firebase, figma',
        skill: 'Mobile app development, Production pipeline',
        projects: [
          'https://play.google.com/store/apps/details?id=id.paper.invoicer&referrer=entry_point%3Dweb_landing%26utm_medium%3Dbanner&pli=1',
          'https://apps.apple.com/id/app/paper-id-invoice-payment/id6463997183',
        ],
      ),
      ExperienceItem(
        title: 'Software Engineer Mobile di Wahyoo, Jakarta',
        period: 'September 2019 – Juli 2023',
        description:
            'Mengembangkan aplikasi mobile dengan Flutter dalam lingkungan agile scrum. '
            '\nTanggung jawab saya:',
        tasks: [
          'Mengembangkan dan merilis build aplikasi mobile ke production.',
          'Menerjemahkan rancangan desain wireframe & mockup UI Figma menjadi kode Flutter.',
          'Mengelola pembaruan tim dan menyelesaikan kendala teknis selama proses pengembangan.',
        ],
        technology: 'nodejs, graphql, flutter, provider, firebase, figma',
        skill: 'Team management, Mobile app development, Git',
        projects: [
          'https://play.google.com/store/apps/details?id=com.wahyoo_mobile&hl=en_US&gl=US',
          'https://play.google.com/store/apps/details?id=com.wahyoo.tkbpos&hl=en',
        ],
      ),
      ExperienceItem(
        title: 'Software Engineer di Twiscode Pte. Ltd., Surabaya',
        period: 'September 2018 – Agustus 2019',
        description:
            'Mengembangkan aplikasi mobile berbasis React Native dalam lingkungan agile scrum.'
            '\nTanggung jawab saya:',
        tasks: [
          'Mengembangkan dan merilis build aplikasi mobile ke production.',
          'Menerjemahkan mockup UI menjadi kode aplikasi mobile yang responsif.',
        ],
        technology: 'react native, androidx, kotlin, laravel rest API',
        skill: 'Team management, Mobile app development, Git',
      ),
    ];
  }

  static EducationItem getEducation(AppLocalizations l10n) {
    return EducationItem(
      institution: l10n.educationInstitution,
      degree: l10n.educationDegree,
      period: l10n.educationPeriod,
      description: l10n.educationDescription,
      gpa: education.gpa,
      skills: education.skills,
    );
  }

  static List<SkillItem> getSkills(AppLocalizations l10n) {
    final yearSuffix = l10n.isIndonesian ? 'Tahun' : 'Years';
    final singleYear = l10n.isIndonesian ? 'Tahun' : 'Year';

    return [
      SkillItem(name: 'Flutter', duration: '> 4 $yearSuffix', badgeColor: const Color(0xFF2563EB)),
      SkillItem(name: 'Android Native', duration: '> 1 $singleYear', badgeColor: const Color(0xFF0284C7)),
      SkillItem(name: 'React Native', duration: '> 1 $singleYear', badgeColor: const Color(0xFF0284C7)),
      SkillItem(name: 'Golang', duration: '< 1 $singleYear', badgeColor: const Color(0xFF0EA5E9)),
      SkillItem(name: 'Nodejs', duration: '< 1 $singleYear', badgeColor: const Color(0xFF0EA5E9)),
      SkillItem(name: 'Git', duration: '> 5 $yearSuffix', badgeColor: const Color(0xFF2563EB)),
    ];
  }
}
