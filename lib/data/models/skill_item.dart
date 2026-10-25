import 'package:flutter/material.dart';

/// Data model representing a technical skill and experience level.
class SkillItem {
  const SkillItem({
    required this.name,
    required this.duration,
    this.badgeColor,
  });

  final String name;
  final String duration;
  final Color? badgeColor;
}
