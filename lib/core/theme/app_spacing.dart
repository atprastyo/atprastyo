import 'package:flutter/material.dart';

/// Central spacing, radius, and elevation tokens.
class AppSpacing {
  AppSpacing._();

  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 20.0;
  static const double xxl = 24.0;

  static const BorderRadius roundedSm = BorderRadius.all(Radius.circular(4.0));
  static const BorderRadius roundedMd = BorderRadius.all(Radius.circular(8.0));
  static const BorderRadius roundedLg = BorderRadius.all(Radius.circular(10.0));
  static const BorderRadius roundedFull = BorderRadius.all(Radius.circular(88.0));

  static const EdgeInsets pagePadding = EdgeInsets.all(16.0);
  static const EdgeInsets cardPadding = EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0);
  static const EdgeInsets cardPaddingFull = EdgeInsets.all(10.0);
}
