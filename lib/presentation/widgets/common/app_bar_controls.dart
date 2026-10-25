import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_profile/core/localization/app_localizations.dart';
import 'package:my_profile/core/settings/app_settings.dart';
import 'package:my_profile/core/theme/app_colors.dart';
import 'package:my_profile/core/theme/app_spacing.dart';

/// Modern floating control pill offering Theme switching and Language toggling.
class AppBarControls extends StatelessWidget {
  const AppBarControls({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = AppSettingsScope.of(context);
    final l10n = AppLocalizations.of(context);
    final isDark = settings.isDarkMode(context);

    return ClipRRect(
      borderRadius: AppSpacing.roundedFull,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          decoration: BoxDecoration(
            color: isDark
                ? AppColors.darkCard.withValues(alpha: 0.85)
                : AppColors.lightCard.withValues(alpha: 0.85),
            borderRadius: AppSpacing.roundedFull,
            border: Border.all(
              color: isDark ? AppColors.darkBorderHighlight : AppColors.lightBorder,
              width: 1.2,
            ),
            boxShadow: AppColors.cardShadow(context),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Language Switcher Pill
              InkWell(
                borderRadius: AppSpacing.roundedFull,
                onTap: settings.toggleLocale,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: isDark
                        ? AppColors.primaryBlue.withValues(alpha: 0.18)
                        : AppColors.primaryBlue.withValues(alpha: 0.1),
                    borderRadius: AppSpacing.roundedFull,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.language_rounded,
                        size: 16,
                        color: AppColors.primary(context),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        l10n.currentLangCode,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary(context),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),

              // Divider
              Container(
                height: 18,
                width: 1,
                color: isDark ? AppColors.darkBorderHighlight : AppColors.lightBorder,
              ),
              const SizedBox(width: 4),

              // Theme Mode Toggle
              IconButton(
                iconSize: 20,
                splashRadius: 18,
                padding: const EdgeInsets.all(6),
                constraints: const BoxConstraints(),
                tooltip: isDark ? l10n.lightMode : l10n.darkMode,
                icon: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (child, anim) =>
                      RotationTransition(turns: anim, child: FadeTransition(opacity: anim, child: child)),
                  child: Icon(
                    isDark ? Icons.light_mode_rounded : Icons.dark_mode_rounded,
                    key: ValueKey<bool>(isDark),
                    color: isDark ? Colors.amber : AppColors.primaryBlue,
                  ),
                ),
                onPressed: () => settings.toggleTheme(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
