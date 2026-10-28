import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_profile/core/theme/app_colors.dart';

/// App theme configuration for both Light and Dark modern modes.
class AppTheme {
  AppTheme._();

  static TextStyle _buildTextStyle(Color color) =>
      GoogleFonts.tajawal(color: color);

  static ThemeData get lightTheme {
    final textStyle = _buildTextStyle(AppColors.lightTextPrimary);

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: AppColors.primaryBlue,
      scaffoldBackgroundColor: AppColors.lightBackground,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryBlue,
        brightness: Brightness.light,
        surface: AppColors.lightCard,
        surfaceContainerLowest: AppColors.lightBackground,
        outline: AppColors.lightBorder,
      ),
      dividerColor: AppColors.lightBorder,
      textTheme: _buildTextTheme(textStyle),
      iconTheme: const IconThemeData(color: AppColors.lightTextPrimary),
    );
  }

  static ThemeData get darkTheme {
    final textStyle = _buildTextStyle(AppColors.darkTextPrimary);

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryBlueLight,
      scaffoldBackgroundColor: AppColors.darkBackground,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryBlueLight,
        brightness: Brightness.dark,
        surface: AppColors.darkCard,
        surfaceContainerLowest: AppColors.darkBackground,
        outline: AppColors.darkBorder,
      ),
      dividerColor: AppColors.darkBorder,
      textTheme: _buildTextTheme(textStyle),
      iconTheme: const IconThemeData(color: AppColors.darkTextPrimary),
    );
  }

  static TextTheme _buildTextTheme(TextStyle base) {
    return TextTheme(
      displayLarge: base.copyWith(fontWeight: FontWeight.w700),
      displayMedium: base.copyWith(fontWeight: FontWeight.w700),
      displaySmall: base.copyWith(fontWeight: FontWeight.w700),
      headlineLarge: base.copyWith(fontWeight: FontWeight.w600),
      headlineMedium: base.copyWith(fontWeight: FontWeight.w600),
      headlineSmall: base.copyWith(fontWeight: FontWeight.w600),
      titleLarge: base.copyWith(fontWeight: FontWeight.w600),
      titleMedium: base.copyWith(fontWeight: FontWeight.w500),
      titleSmall: base.copyWith(fontWeight: FontWeight.w500),
      bodyLarge: base.copyWith(fontWeight: FontWeight.w400),
      bodyMedium: base.copyWith(fontWeight: FontWeight.w400),
      bodySmall: base.copyWith(fontWeight: FontWeight.w400),
      labelLarge: base.copyWith(fontWeight: FontWeight.w500),
      labelMedium: base.copyWith(fontWeight: FontWeight.w500),
      labelSmall: base.copyWith(fontWeight: FontWeight.w500),
    );
  }
}
