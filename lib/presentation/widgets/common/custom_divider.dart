import 'package:flutter/material.dart';
import 'package:my_profile/core/theme/app_colors.dart';

/// Modern top accent gradient divider beneath the header.
class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.0,
      margin: const EdgeInsets.only(bottom: 20, top: 4),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: AppColors.dividerGradient(context),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
    );
  }
}
