import 'package:flutter/material.dart';
import 'package:my_profile/core/extensions/context_extensions.dart';
import 'package:my_profile/core/localization/app_localizations.dart';
import 'package:my_profile/core/theme/app_colors.dart';
import 'package:my_profile/core/theme/app_spacing.dart';
import 'package:my_profile/data/models/education_item.dart';
import 'package:my_profile/presentation/widgets/common/section_card.dart';

/// Education section detailing academic degrees, accomplishments, and GPA.
class EducationSection extends StatelessWidget {
  const EducationSection({
    super.key,
    required this.education,
  });

  final EducationItem education;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final isMobile = context.isMobile;
    final l10n = AppLocalizations.of(context);
    final primary = AppColors.primary(context);

    return SectionCard(
      title: l10n.education,
      icon: Icons.school_outlined,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SelectableText(
                  '${education.institution}, ${education.degree}',
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: isMobile ? 14 : 15,
                    color: AppColors.textPrimary(context),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: primary.withValues(alpha: 0.12),
                  borderRadius: AppSpacing.roundedSm,
                ),
                child: Text(
                  'GPA: ${education.gpa}',
                  style: textTheme.bodySmall?.copyWith(
                    color: primary,
                    fontWeight: FontWeight.w700,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4.0),
          SelectableText(
            education.period,
            style: textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.textMuted(context),
            ),
          ),
          const SizedBox(height: 8.0),
          SelectableText(
            education.description,
            style: textTheme.bodyMedium?.copyWith(
              color: AppColors.textSecondary(context),
              fontSize: isMobile ? 12 : 13,
              height: 1.5,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: [
              Text(
                '${l10n.skillLabel}:',
                style: textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary(context),
                ),
              ),
              for (final sk in education.skills.split(','))
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                  decoration: BoxDecoration(
                    color: AppColors.border(context).withValues(alpha: 0.5),
                    borderRadius: AppSpacing.roundedSm,
                  ),
                  child: Text(
                    sk.trim(),
                    style: textTheme.bodySmall?.copyWith(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textSecondary(context),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
