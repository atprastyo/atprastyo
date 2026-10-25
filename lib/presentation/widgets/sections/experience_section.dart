import 'package:flutter/material.dart';
import 'package:my_profile/core/extensions/context_extensions.dart';
import 'package:my_profile/core/localization/app_localizations.dart';
import 'package:my_profile/core/theme/app_colors.dart';
import 'package:my_profile/core/theme/app_spacing.dart';
import 'package:my_profile/core/utils/url_helper.dart';
import 'package:my_profile/data/models/experience_item.dart';
import 'package:my_profile/presentation/widgets/common/section_card.dart';

/// Work experience section showing career trajectory, duties, tech stack, and projects.
class ExperienceSection extends StatelessWidget {
  const ExperienceSection({
    super.key,
    required this.experiences,
  });

  final List<ExperienceItem> experiences;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return SectionCard(
      title: l10n.experience,
      icon: Icons.work_outline_rounded,
      child: Column(
        children: [
          for (int i = 0; i < experiences.length; i++) ...[
            _ExperienceEntry(item: experiences[i]),
            if (i < experiences.length - 1)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: AppColors.border(context),
                ),
              ),
          ],
        ],
      ),
    );
  }
}

class _ExperienceEntry extends StatelessWidget {
  const _ExperienceEntry({required this.item});

  final ExperienceItem item;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final isMobile = context.isMobile;
    final l10n = AppLocalizations.of(context);
    final primary = AppColors.primary(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title & Period Row
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SelectableText(
                item.title,
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: isMobile ? 15 : 16,
                  color: AppColors.textPrimary(context),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: primary.withValues(alpha: 0.08),
            borderRadius: AppSpacing.roundedSm,
          ),
          child: Text(
            item.period,
            style: textTheme.bodySmall?.copyWith(
              color: primary,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(height: 8),
        SelectableText(
          item.description,
          style: textTheme.bodyMedium?.copyWith(
            color: AppColors.textSecondary(context),
            fontSize: isMobile ? 13 : 14,
            height: 1.5,
          ),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 6),
        for (final task in item.tasks)
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, right: 8.0),
                  child: Icon(
                    Icons.arrow_right_rounded,
                    size: 16,
                    color: primary,
                  ),
                ),
                Expanded(
                  child: SelectableText(
                    task,
                    style: textTheme.bodyMedium?.copyWith(
                      color: AppColors.textPrimary(context),
                      fontSize: isMobile ? 13 : 14,
                      height: 1.45,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        if (item.technology != null) ...[
          const SizedBox(height: 8),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: [
              Text(
                '${l10n.technology}:',
                style: textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary(context),
                ),
              ),
              for (final tech in item.technology!.split(','))
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                  decoration: BoxDecoration(
                    color: AppColors.border(context).withValues(alpha: 0.5),
                    borderRadius: AppSpacing.roundedSm,
                  ),
                  child: Text(
                    tech.trim(),
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
        if (item.projects != null && item.projects!.isNotEmpty) ...[
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 6,
            children: [
              for (final projectUrl in item.projects!)
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    visualDensity: VisualDensity.compact,
                    side: BorderSide(color: primary.withValues(alpha: 0.4)),
                    shape: const RoundedRectangleBorder(
                      borderRadius: AppSpacing.roundedSm,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  ),
                  icon: Icon(
                    projectUrl.contains('apple.com')
                        ? Icons.apple
                        : Icons.shop_two_outlined,
                    size: 15,
                    color: primary,
                  ),
                  label: Text(
                    projectUrl.contains('apple.com')
                        ? 'App Store'
                        : 'Play Store',
                    style: textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: primary,
                      fontSize: 12,
                    ),
                  ),
                  onPressed: () => UrlHelper.launch(projectUrl),
                ),
            ],
          ),
        ],
      ],
    );
  }
}
