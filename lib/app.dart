import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_profile/core/localization/app_localizations.dart';
import 'package:my_profile/core/settings/app_settings.dart';
import 'package:my_profile/core/theme/app_theme.dart';
import 'package:my_profile/presentation/pages/portfolio_page.dart';

/// Root application widget supporting dynamic ThemeMode and Localization.
class PortfolioApp extends StatefulWidget {
  const PortfolioApp({
    super.key,
    this.initialThemeMode = ThemeMode.system,
    this.initialLocale = const Locale('en'),
  });

  final ThemeMode initialThemeMode;
  final Locale initialLocale;

  @override
  State<PortfolioApp> createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  late final AppSettingsController _settingsController;

  @override
  void initState() {
    super.initState();
    _settingsController = AppSettingsController(
      initialThemeMode: widget.initialThemeMode,
      initialLocale: widget.initialLocale,
    );
  }

  @override
  void dispose() {
    _settingsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppSettingsScope(
      controller: _settingsController,
      child: ListenableBuilder(
        listenable: _settingsController,
        builder: (context, _) {
          return MaterialApp(
            title: 'Agus Tri Prastyo - Software Engineer',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: _settingsController.themeMode,
            locale: _settingsController.locale,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            home: const PortfolioPage(),
          );
        },
      ),
    );
  }
}
