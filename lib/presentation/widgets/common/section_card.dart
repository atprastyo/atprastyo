import 'package:flutter/material.dart';
import 'package:my_profile/core/extensions/context_extensions.dart';
import 'package:my_profile/core/theme/app_colors.dart';
import 'package:my_profile/presentation/widgets/common/card_box.dart';

/// Modern standard container for profile sections (icon badge + title + card content).
class SectionCard extends StatelessWidget {
  const SectionCard({
    super.key,
    required this.title,
    required this.icon,
    required this.child,
    this.contentPadding,
  });

  final String title;
  final IconData icon;
  final Widget child;
  final EdgeInsets? contentPadding;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final isMobile = context.isMobile;
    final primary = AppColors.primary(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CardBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 6.0, right: 10.0),
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: primary.withValues(alpha: 0.12),
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Icon(
                  icon,
                  color: primary,
                  size: isMobile ? 18 : 20,
                ),
              ),
              Expanded(
                child: SelectableText(
                  title,
                  style: textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary(context),
                    height: 1.0,
                    fontSize: isMobile ? 16 : 18,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4.0),
        CardBox(
          top: false,
          padding: contentPadding,
          child: child,
        ),
      ],
    );
  }
}
