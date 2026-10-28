import 'package:flutter/material.dart';
import 'package:my_profile/core/constants/app_assets.dart';
import 'package:my_profile/core/extensions/context_extensions.dart';
import 'package:my_profile/core/theme/app_colors.dart';
import 'package:my_profile/core/theme/app_spacing.dart';
import 'package:my_profile/data/models/profile_info.dart';

/// Top header section displaying avatar with glow, name, role, contact info, and location.
class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
    required this.profile,
  });

  final ProfileInfo profile;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final isMobile = context.isMobile;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final primary = AppColors.primary(context);

    final avatar = Container(
      height: isMobile ? 112 : 160,
      width: isMobile ? 112 : 160,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isDark
              ? primary.withValues(alpha: 0.6)
              : primary.withValues(alpha: 0.35),
          width: 3.0,
        ),
        boxShadow: [
          BoxShadow(
            color: primary.withValues(alpha: isDark ? 0.35 : 0.2),
            blurRadius: isMobile ? 16 : 24,
            spreadRadius: isMobile ? 1 : 2,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: AppSpacing.roundedFull,
        child: Image.asset(
          AppAssets.resolve(AppAssets.profileCircle),
          fit: BoxFit.cover,
        ),
      ),
    );

    final content = Column(
      crossAxisAlignment:
          isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        SelectableText(
          profile.name,
          textAlign: isMobile ? TextAlign.center : TextAlign.left,
          style: textTheme.displaySmall?.copyWith(
            fontSize: isMobile ? 24 : 32,
            fontWeight: FontWeight.w800,
            color: AppColors.textPrimary(context),
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(height: 4.0),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          decoration: BoxDecoration(
            color: primary.withValues(alpha: 0.12),
            borderRadius: AppSpacing.roundedSm,
          ),
          child: SelectableText(
            profile.title,
            style: textTheme.titleMedium?.copyWith(
              fontSize: isMobile ? 14 : 16,
              fontWeight: FontWeight.w700,
              color: primary,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Wrap(
          spacing: 16.0,
          runSpacing: 4.0,
          alignment: isMobile ? WrapAlignment.center : WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            _buildContactItem(
              context: context,
              icon: Icons.phone_rounded,
              text: profile.phone,
            ),
            _buildContactItem(
              context: context,
              icon: Icons.email_rounded,
              text: profile.email,
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        Row(
          mainAxisSize: isMobile ? MainAxisSize.min : MainAxisSize.max,
          mainAxisAlignment:
              isMobile ? MainAxisAlignment.center : MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.location_on_rounded,
              size: 16,
              color: primary,
            ),
            const SizedBox(width: 4.0),
            Flexible(
              child: SelectableText(
                profile.location,
                textAlign: isMobile ? TextAlign.center : TextAlign.left,
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.textSecondary(context),
                  fontSize: isMobile ? 12 : 13,
                ),
              ),
            ),
          ],
        ),
      ],
    );

    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.card(context),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
        border: Border.all(
          color: AppColors.border(context),
          width: 1.0,
        ),
        boxShadow: AppColors.headerShadow(context),
      ),
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 16.0 : 20.0),
        child: isMobile
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  avatar,
                  const SizedBox(height: 16.0),
                  content,
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: avatar,
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(child: content),
                ],
              ),
      ),
    );
  }

  Widget _buildContactItem({
    required BuildContext context,
    required IconData icon,
    required String text,
  }) {
    final textTheme = context.textTheme;
    final primary = AppColors.primary(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: primary, size: 16),
        const SizedBox(width: 6.0),
        Flexible(
          child: Text(
            text,
            style: textTheme.bodyMedium?.copyWith(
              color: AppColors.textPrimary(context),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
