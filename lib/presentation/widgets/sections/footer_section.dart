import 'package:flutter/material.dart';
import 'package:my_profile/core/extensions/context_extensions.dart';
import 'package:my_profile/core/localization/app_localizations.dart';
import 'package:my_profile/core/theme/app_colors.dart';
import 'package:my_profile/presentation/widgets/common/card_box.dart';

/// Modern footer section displaying build information and update date.
class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final isMobile = context.isMobile;
    final l10n = AppLocalizations.of(context);
    final primary = AppColors.primary(context);

    return CardBox(
      full: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment:
                  isMobile ? MainAxisAlignment.start : MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.flutter_dash,
                  size: 18,
                  color: primary,
                ),
                const SizedBox(width: 8.0),
                Text(
                  l10n.createdWith,
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary(context),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4.0),
            Align(
              alignment:
                  isMobile ? Alignment.centerLeft : Alignment.center,
              child: SelectableText(
                l10n.updatedDate,
                style: textTheme.bodySmall?.copyWith(
                  color: AppColors.textMuted(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
