import 'package:flutter/material.dart';

/// Centralized modern color palette supporting Light and Dark modes.
class AppColors {
  AppColors._();

  // Primary brand palette
  static const Color primaryBlue = Color(0xFF2563EB);
  static const Color primaryBlueLight = Color(0xFF60A5FA);
  static const Color accentCyan = Color(0xFF0EA5E9);
  static const Color accentSky = Color(0xFF38BDF8);
  static const Color accentIndigo = Color(0xFF6366F1);

  // Light Mode Tokens
  static const Color lightBackground = Color(0xFFF8FAFC);
  static const Color lightCard = Color(0xFFFFFFFF);
  static const Color lightBorder = Color(0xFFE2E8F0);
  static const Color lightTextPrimary = Color(0xFF0F172A);
  static const Color lightTextSecondary = Color(0xFF475569);
  static const Color lightTextMuted = Color(0xFF64748B);

  // Dark Mode Tokens
  static const Color darkBackground = Color(0xFF0B0F19);
  static const Color darkCard = Color(0xFF131B2E);
  static const Color darkBorder = Color(0xFF1E293B);
  static const Color darkBorderHighlight = Color(0xFF334155);
  static const Color darkTextPrimary = Color(0xFFF8FAFC);
  static const Color darkTextSecondary = Color(0xFFCBD5E1);
  static const Color darkTextMuted = Color(0xFF94A3B8);

  // Dynamic color resolution based on brightness
  static Color background(BuildContext context) =>
      _isDark(context) ? darkBackground : lightBackground;

  static Color card(BuildContext context) =>
      _isDark(context) ? darkCard : lightCard;

  static Color border(BuildContext context) =>
      _isDark(context) ? darkBorder : lightBorder;

  static Color textPrimary(BuildContext context) =>
      _isDark(context) ? darkTextPrimary : lightTextPrimary;

  static Color textSecondary(BuildContext context) =>
      _isDark(context) ? darkTextSecondary : lightTextSecondary;

  static Color textMuted(BuildContext context) =>
      _isDark(context) ? darkTextMuted : lightTextMuted;

  static Color primary(BuildContext context) =>
      _isDark(context) ? primaryBlueLight : primaryBlue;

  static List<Color> pageGradient(BuildContext context) => _isDark(context)
      ? const [
          Color(0xFF0B0F19),
          Color(0xFF10172A),
          Color(0xFF0F172A),
          Color(0xFF0B0F19),
        ]
      : const [
          Color(0xFFF8FAFC),
          Color(0xFFFFFFFF),
          Color(0xFFF1F5F9),
          Color(0xFFF8FAFC),
        ];

  static List<Color> dividerGradient(BuildContext context) => _isDark(context)
      ? [
          const Color(0xFF1E293B),
          primaryBlue.withValues(alpha: 0.4),
          accentCyan.withValues(alpha: 0.4),
          const Color(0xFF1E293B),
        ]
      : [
          const Color(0xFFE2E8F0),
          primaryBlue.withValues(alpha: 0.2),
          accentCyan.withValues(alpha: 0.2),
          const Color(0xFFE2E8F0),
        ];

  static List<BoxShadow> cardShadow(BuildContext context) => _isDark(context)
      ? [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.35),
            offset: const Offset(0, 4),
            blurRadius: 16,
          ),
          BoxShadow(
            color: primaryBlue.withValues(alpha: 0.04),
            offset: const Offset(0, 0),
            blurRadius: 20,
          ),
        ]
      : [
          BoxShadow(
            color: const Color(0xFF0F172A).withValues(alpha: 0.06),
            offset: const Offset(0, 4),
            blurRadius: 16,
          ),
        ];

  static List<BoxShadow> headerShadow(BuildContext context) => _isDark(context)
      ? [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.45),
            offset: const Offset(0, 6),
            blurRadius: 24,
          ),
        ]
      : [
          BoxShadow(
            color: const Color(0xFF0F172A).withValues(alpha: 0.08),
            offset: const Offset(0, 6),
            blurRadius: 20,
          ),
        ];

  static bool _isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;
}
