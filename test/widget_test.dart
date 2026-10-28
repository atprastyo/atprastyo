import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_profile/app.dart';

void main() {
  setUp(() {
    GoogleFonts.config.allowRuntimeFetching = false;
  });

  testWidgets('Renders PortfolioApp, core profile details, and switches language', (
    WidgetTester tester,
  ) async {
    tester.view.physicalSize = const Size(1280, 1000);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(() => tester.view.resetPhysicalSize());

    await tester.pumpWidget(const PortfolioApp(
      initialThemeMode: ThemeMode.light,
      initialLocale: Locale('en'),
    ));
    await tester.pumpAndSettle();

    expect(find.text('Agus Tri Prastyo'), findsOneWidget);
    expect(find.text('Software Engineer'), findsOneWidget);
    expect(find.text('About Me'), findsOneWidget);
    expect(find.text('Experience'), findsOneWidget);
    expect(find.text('Education'), findsOneWidget);
    expect(find.text('Skills'), findsOneWidget);
    expect(find.text('Links'), findsOneWidget);
    expect(find.text('EN'), findsOneWidget);

    // Tap language toggle pill to switch to Indonesian
    await tester.tap(find.text('EN'));
    await tester.pumpAndSettle();

    expect(find.text('ID'), findsOneWidget);
    expect(find.text('Tentang Saya'), findsOneWidget);
    expect(find.text('Pengalaman'), findsOneWidget);
    expect(find.text('Pendidikan'), findsOneWidget);
    expect(find.text('Keahlian'), findsOneWidget);
    expect(find.text('Tautan'), findsOneWidget);

    // Tap theme toggle button
    await tester.tap(find.byIcon(Icons.dark_mode_rounded));
    await tester.pumpAndSettle();

    expect(find.byIcon(Icons.light_mode_rounded), findsOneWidget);
  });

  testWidgets('Renders PortfolioApp responsive view on mobile width', (
    WidgetTester tester,
  ) async {
    tester.view.physicalSize = const Size(400, 1200);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(() => tester.view.resetPhysicalSize());

    await tester.pumpWidget(const PortfolioApp());
    await tester.pumpAndSettle();

    expect(find.text('Agus Tri Prastyo'), findsOneWidget);
    expect(find.text('About Me'), findsOneWidget);
    expect(find.text('Experience'), findsOneWidget);
  });
}
