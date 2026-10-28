import 'package:flutter/material.dart';
import 'package:my_profile/core/extensions/context_extensions.dart';
import 'package:my_profile/core/localization/app_localizations.dart';
import 'package:my_profile/core/theme/app_colors.dart';
import 'package:my_profile/core/theme/app_spacing.dart';
import 'package:my_profile/data/models/skill_item.dart';
import 'package:my_profile/presentation/widgets/common/section_card.dart';

/// Technical skills section showing skills and years of experience.
class SkillSection extends StatelessWidget {
  const SkillSection({
    super.key,
    required this.skills,
  });

  final List<SkillItem> skills;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final l10n = AppLocalizations.of(context);

    return SectionCard(
      title: l10n.skills,
      icon: Icons.code_rounded,
      child: Column(
        children: [
          for (final skill in skills)
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: SelectableText(
                      skill.name,
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary(context),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: AppSpacing.roundedSm,
                      color: skill.badgeColor ?? AppColors.primary(context),
                    ),
                    child: Text(
                      skill.duration,
                      style: textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 11,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
