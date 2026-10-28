import 'package:flutter/material.dart';

/// Data model representing an external link (LinkedIn, GitHub, etc.).
class LinkItem {
  const LinkItem({
    required this.title,
    required this.url,
    required this.iconAsset,
    this.iconColor,
    this.iconBlendMode,
  });

  final String title;
  final String url;
  final String iconAsset;
  final Color? iconColor;
  final BlendMode? iconBlendMode;
}
