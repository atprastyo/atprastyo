import 'package:flutter/material.dart';
import 'package:my_profile/core/extensions/context_extensions.dart';
import 'package:my_profile/core/localization/app_localizations.dart';
import 'package:my_profile/core/theme/app_colors.dart';
import 'package:my_profile/data/models/profile_info.dart';
import 'package:my_profile/presentation/widgets/common/section_card.dart';

/// About Me section displaying professional summary and areas of expertise.
class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
    required this.profile,
  });

  final ProfileInfo profile;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final l10n = AppLocalizations.of(context);

    return SectionCard(
      title: l10n.aboutMe,
      icon: Icons.account_circle_outlined,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectableText(
            profile.about,
            style: textTheme.bodyMedium?.copyWith(
              color: AppColors.textPrimary(context),
              height: 1.6,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 12.0),
          SelectableText(
            l10n.areasOfExpertise,
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.primary(context),
            ),
          ),
          const SizedBox(height: 4.0),
          SelectableText(
            profile.areasOfExpertise,
            style: textTheme.bodyMedium?.copyWith(
              color: AppColors.textSecondary(context),
              height: 1.5,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
