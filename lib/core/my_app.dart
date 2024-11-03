import 'package:flutter/material.dart';
import 'package:my_profile/core/style/app_theme.dart';
import 'package:my_profile/pages/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agus Tri Prastyo',
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      home: const MyHomePage(),
    );
  }
}
