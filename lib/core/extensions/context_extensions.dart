import 'package:flutter/material.dart';
import 'package:my_profile/core/localization/app_localizations.dart';

/// Extension methods for clean and concise BuildContext access.
extension ContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  AppLocalizations get l10n => AppLocalizations.of(this);

  double get screenWidth => mediaQuery.size.width;
  double get screenHeight => mediaQuery.size.height;

  bool get isMobile => screenWidth < 850;
  bool get isTablet => screenWidth >= 850 && screenWidth < 1100;
  bool get isDesktop => screenWidth >= 1100;

  T responsive<T>({
    required T mobile,
    T? tablet,
    required T desktop,
  }) {
    if (isDesktop) return desktop;
    if (isTablet && tablet != null) return tablet;
    return mobile;
  }
}
