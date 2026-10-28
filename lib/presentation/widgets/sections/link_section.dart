import 'package:flutter/material.dart';
import 'package:my_profile/core/constants/app_assets.dart';
import 'package:my_profile/core/extensions/context_extensions.dart';
import 'package:my_profile/core/localization/app_localizations.dart';
import 'package:my_profile/core/theme/app_colors.dart';
import 'package:my_profile/core/theme/app_spacing.dart';
import 'package:my_profile/core/utils/url_helper.dart';
import 'package:my_profile/data/models/link_item.dart';
import 'package:my_profile/presentation/widgets/common/section_card.dart';

/// Links section providing direct navigation to GitHub, LinkedIn, etc.
class LinkSection extends StatelessWidget {
  const LinkSection({
    super.key,
    required this.links,
  });

  final List<LinkItem> links;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final l10n = AppLocalizations.of(context);
    final primary = AppColors.primary(context);

    return SectionCard(
      title: l10n.links,
      icon: Icons.link_rounded,
      child: Column(
        children: [
          for (final link in links) ...[
            InkWell(
              borderRadius: AppSpacing.roundedSm,
              onTap: () => UrlHelper.launch(link.url),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.0,
                      width: 20.0,
                      child: Image.asset(
                        AppAssets.resolve(link.iconAsset),
                        color: link.iconColor,
                        colorBlendMode: link.iconBlendMode,
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Text(
                        link.title,
                        style: textTheme.bodyMedium?.copyWith(
                          color: AppColors.textPrimary(context),
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_outward_rounded,
                      size: 16,
                      color: primary.withValues(alpha: 0.8),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 4),
          ],
        ],
      ),
    );
  }
}
