import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextStyle textStyle = GoogleFonts.tajawal(color: Colors.black87);
final defaultTheme = ThemeData(
  primarySwatch: Colors.blue,
  textTheme: TextTheme(
    displayLarge: textStyle,
    displayMedium: textStyle,
    displaySmall: textStyle,
    headlineLarge: textStyle,
    headlineMedium: textStyle,
    headlineSmall: textStyle,
    titleLarge: textStyle,
    titleMedium: textStyle,
    titleSmall: textStyle,
    bodyLarge: textStyle,
    bodyMedium: textStyle,
    bodySmall: textStyle,
    labelLarge: textStyle,
    labelMedium: textStyle,
    labelSmall: textStyle,
  ),
);
