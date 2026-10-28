import 'package:flutter/material.dart';
import 'package:my_profile/core/extensions/context_extensions.dart';
import 'package:my_profile/core/localization/app_localizations.dart';
import 'package:my_profile/core/theme/app_colors.dart';
import 'package:my_profile/core/theme/app_spacing.dart';
import 'package:my_profile/data/portfolio_data.dart';
import 'package:my_profile/presentation/widgets/common/app_bar_controls.dart';
import 'package:my_profile/presentation/widgets/common/custom_divider.dart';
import 'package:my_profile/presentation/widgets/sections/about_section.dart';
import 'package:my_profile/presentation/widgets/sections/education_section.dart';
import 'package:my_profile/presentation/widgets/sections/experience_section.dart';
import 'package:my_profile/presentation/widgets/sections/footer_section.dart';
import 'package:my_profile/presentation/widgets/sections/header_section.dart';
import 'package:my_profile/presentation/widgets/sections/link_section.dart';
import 'package:my_profile/presentation/widgets/sections/skill_section.dart';

/// Main screen showcasing the developer profile, resume, and experience.
class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = context.isMobile;
    final l10n = AppLocalizations.of(context);

    final profile = PortfolioData.getProfile(l10n);
    final experiences = PortfolioData.getExperiences(l10n);
    final education = PortfolioData.getEducation(l10n);
    final skills = PortfolioData.getSkills(l10n);

    return Scaffold(
      backgroundColor: AppColors.background(context),
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.pageGradient(context),
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1240),
                child: SelectionArea(
                  child: ListView(
                    padding: EdgeInsets.fromLTRB(
                      AppSpacing.lg,
                      isMobile ? 64.0 : 72.0, // Top space for floating controls
                      AppSpacing.lg,
                      AppSpacing.lg,
                    ),
                    children: [
                      HeaderSection(profile: profile),
                      const CustomDivider(),
                      if (isMobile) ...[
                        AboutSection(profile: profile),
                        const SizedBox(height: AppSpacing.lg),
                        ExperienceSection(experiences: experiences),
                        const SizedBox(height: AppSpacing.lg),
                        EducationSection(education: education),
                        const SizedBox(height: AppSpacing.lg),
                        SkillSection(skills: skills),
                        const SizedBox(height: AppSpacing.lg),
                        LinkSection(links: PortfolioData.links),
                        const SizedBox(height: AppSpacing.lg),
                        const FooterSection(),
                      ] else ...[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Column(
                                children: [
                                  AboutSection(profile: profile),
                                  const SizedBox(height: AppSpacing.lg),
                                  SkillSection(skills: skills),
                                  const SizedBox(height: AppSpacing.lg),
                                  LinkSection(links: PortfolioData.links),
                                  const SizedBox(height: AppSpacing.lg),
                                  const FooterSection(),
                                ],
                              ),
                            ),
                            const SizedBox(width: AppSpacing.lg),
                            Expanded(
                              flex: 8,
                              child: Column(
                                children: [
                                  ExperienceSection(experiences: experiences),
                                  const SizedBox(height: AppSpacing.lg),
                                  EducationSection(education: education),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),

            // Top Floating Controls (Theme switch & Language toggle)
            const Positioned(
              top: 14,
              right: 18,
              child: AppBarControls(),
            ),
          ],
        ),
      ),
    );
  }
}
