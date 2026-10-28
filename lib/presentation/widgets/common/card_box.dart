import 'package:flutter/material.dart';
import 'package:my_profile/core/theme/app_colors.dart';
import 'package:my_profile/core/theme/app_spacing.dart';

/// Modern theme-aware card box widget with customizable borders, elevation, and padding.
class CardBox extends StatelessWidget {
  const CardBox({
    super.key,
    this.child,
    this.padding,
    this.top = true,
    this.full = false,
  });

  final Widget? child;
  final EdgeInsets? padding;
  final bool top;
  final bool full;

  @override
  Widget build(BuildContext context) {
    const double radius = 10.0;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.card(context),
        borderRadius: full
            ? const BorderRadius.all(Radius.circular(radius))
            : BorderRadius.vertical(
                top: top ? const Radius.circular(radius) : Radius.zero,
                bottom: top ? Radius.zero : const Radius.circular(radius),
              ),
        border: Border.all(
          color: AppColors.border(context),
          width: 1.0,
        ),
        boxShadow: AppColors.cardShadow(context),
      ),
      child: Padding(
        padding: padding ??
            (full
                ? AppSpacing.cardPaddingFull
                : EdgeInsets.fromLTRB(14, 12, 14, top ? 0 : 12)),
        child: child,
      ),
    );
  }
}
