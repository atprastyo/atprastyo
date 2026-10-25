import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/core/extensions/context_extensions.dart';

/// Responsive utility maintained for backwards compatibility.
/// Modern approach: use [ResponsiveLayout] or context extensions ([context.isMobile]).
class Responsive extends StatelessWidget {
  const Responsive({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  static bool isMobile(BuildContext context) => context.isMobile;
  static bool isTablet(BuildContext context) => context.isTablet;
  static bool isDesktop(BuildContext context) => context.isDesktop;

  @override
  Widget build(BuildContext context) {
    if (context.isDesktop) {
      return desktop;
    } else if (context.isTablet && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}

/// Legacy asset helper. Modern approach: use [AppAssets.resolve].
String path(String str) {
  return (kIsWeb) ? 'assets/$str' : str;
}
