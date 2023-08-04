import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'utils/responvie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = GoogleFonts.tajawal(color: Colors.black87);

    return MaterialApp(
      title: 'Agus Tri Prastyo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
      ),
      // home: const HeaderBanner(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double blurRadius = 4;

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      // Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      //   setState(() {
      //     blurRadius = blurRadius == 20 ? 6 : 20;
      //   });
      // });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final bool isMobile = Responsive.isMobile(context);
    final Widget body = Container(
      padding: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.grey.shade50,
            Colors.white,
            Colors.grey.shade100,
            Colors.white,
            Colors.grey.shade50,
          ],
        ),
        border: Border.all(color: Colors.black12, width: 2),
      ),
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(8),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(2, 4),
                  blurRadius: 8,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: isMobile ? 8 : 32.0,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          if (isMobile)
                            ClipRRect(
                              borderRadius: BorderRadius.circular(88),
                              child: Image.asset(
                                path('images/profile_circle.png'),
                                height: 160,
                                width: 160,
                              ),
                            )
                          else
                            AnimatedContainer(
                              height: 168,
                              width: 168,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(88),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blue.shade200,
                                    offset: const Offset(0, 1),
                                    blurRadius: blurRadius,
                                  )
                                ],
                              ),
                              duration: const Duration(milliseconds: 800),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(88),
                                child: Image.asset(
                                  path('images/profile_circle.png'),
                                  height: 160,
                                  width: 160,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  if (!isMobile) const SizedBox(width: 24.0),
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SelectableText(
                          'Agus Tri Prastyo',
                          style: textTheme.displaySmall?.copyWith(
                            fontSize: isMobile ? 20 : null,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 2.0),
                        SelectableText(
                          'Software Engineer',
                          style: textTheme.headlineSmall?.copyWith(
                            fontSize: isMobile ? 16 : null,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue.shade900,
                          ),
                        ),
                        const SizedBox(height: 6.0),
                        if (isMobile)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.phone,
                                    color: Colors.black87,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 4.0),
                                  Expanded(
                                    child: SelectableText(
                                      '+6281939143915',
                                      style: textTheme.titleSmall?.copyWith(
                                        height: 1.8,
                                        color: Colors.black,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.email_outlined,
                                    color: Colors.black87,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 4.0),
                                  Expanded(
                                    child: SelectableText(
                                      'atprastyo.com@gmail.com',
                                      style: textTheme.bodyMedium?.copyWith(
                                        height: 1.4,
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        else
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Icons.phone, color: Colors.black87),
                              const SizedBox(width: 4.0),
                              SelectableText(
                                '+6281939143915',
                                style: textTheme.titleSmall?.copyWith(
                                  height: 1.8,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 12.0),
                              const Icon(
                                Icons.email_outlined,
                                color: Colors.black87,
                              ),
                              const SizedBox(width: 4.0),
                              Expanded(
                                child: SelectableText(
                                  'atprastyo.com@gmail.com',
                                  style: textTheme.bodyMedium?.copyWith(
                                    height: 1.4,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        SizedBox(height: isMobile ? 4 : 10.0),
                        SelectableText(
                          'Kedung losari, Tembelang, Jombang, East Java, Indonesia, 61452',
                          style: textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.blue.shade700,
                            fontSize: isMobile ? 12 : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 12.0,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.grey.shade100,
                  Colors.grey.shade50,
                  Colors.white,
                  Colors.grey.shade50,
                ],
              ),
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(10),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(2, 6),
                  blurRadius: 8,
                )
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CardBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 8.0,
                              right: 8.0,
                            ),
                            child: Icon(
                              Icons.account_box,
                              color: Colors.blueAccent,
                              size: isMobile ? 18 : null,
                            ),
                          ),
                          SelectableText(
                            'About Me',
                            style: textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.blue.shade800,
                              height: 1.0,
                              fontSize: isMobile ? 16 : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    CardBox(
                      top: false,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SelectableText(
                            "I am a person who is passionate about information technology and I dedicate myself to continuous self-development in order to become a better person."
                            "\nCurrently, I'm developing a mobile app using Flutter with API service integration and then about the backend I've been working on it using golang and nodejs.",
                            style: textTheme.bodyMedium,
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(height: 8),
                          SelectableText(
                            'Areas of expertise',
                            style: textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SelectableText(
                            "Mobile app development, Software API development, Team management",
                            style: textTheme.bodyMedium,
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    CardBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 8.0,
                              right: 8.0,
                            ),
                            child: Icon(
                              Icons.laptop_mac,
                              color: Colors.blueAccent,
                              size: isMobile ? 18 : null,
                            ),
                          ),
                          SelectableText(
                            'Skill',
                            style: textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.blue.shade800,
                              height: 1,
                              fontSize: isMobile ? 16 : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                    CardBox(
                      top: false,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: SelectableText(
                                    'Flutter',
                                    style: textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.0),
                                      color: Colors.blue.shade700,
                                    ),
                                    child: Text(
                                      '> 3 Years',
                                      style: textTheme.bodySmall?.copyWith(
                                        color: Colors.white,
                                        height: 1.9,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: SelectableText(
                                    'Android Native',
                                    style: textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.0),
                                      color: Colors.blue.shade600,
                                    ),
                                    child: Text(
                                      '> 1 Year',
                                      style: textTheme.bodySmall?.copyWith(
                                        color: Colors.white,
                                        height: 1.9,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: SelectableText(
                                    'React Native',
                                    style: textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.0),
                                      color: Colors.blue.shade600,
                                    ),
                                    child: Text(
                                      '> 1 Year',
                                      style: textTheme.bodySmall?.copyWith(
                                        color: Colors.white,
                                        height: 1.9,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: SelectableText(
                                    'Golang',
                                    style: textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.0),
                                      color: Colors.blue.shade400,
                                    ),
                                    child: Text(
                                      '< 1 Year',
                                      style: textTheme.bodySmall?.copyWith(
                                        color: Colors.white,
                                        height: 1.9,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: SelectableText(
                                    'Nodejs',
                                    style: textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.0),
                                      color: Colors.blue.shade400,
                                    ),
                                    child: Text(
                                      '< 1 Year',
                                      style: textTheme.bodySmall?.copyWith(
                                        color: Colors.white,
                                        height: 1.9,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: SelectableText(
                                    'Git',
                                    style: textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.0),
                                      color: Colors.blue.shade600,
                                    ),
                                    child: Text(
                                      '> 5 Years',
                                      style: textTheme.bodySmall?.copyWith(
                                        color: Colors.white,
                                        height: 1.9,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    CardBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 8.0,
                              right: 8.0,
                            ),
                            child: Icon(
                              Icons.link,
                              color: Colors.blueAccent,
                              size: isMobile ? 18 : null,
                            ),
                          ),
                          SelectableText(
                            'Link',
                            style: textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.blue.shade800,
                              height: 1,
                              fontSize: isMobile ? 16 : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                    CardBox(
                      top: false,
                      child: Column(
                        children: [
                          TextButton(
                            style:
                                TextButton.styleFrom(padding: EdgeInsets.zero),
                            onPressed: () async {
                              final Uri? url = Uri.tryParse(
                                'www.linkedin.com/in/atprastyo',
                              );
                              if (!await launchUrl(url!)) {
                                throw Exception('Could not launch $url');
                              }
                            },
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 20.0,
                                  child: Image.asset(
                                      path('images/linkedin-logo.png')),
                                ),
                                const SizedBox(width: 8.0),
                                Expanded(
                                  child: Text(
                                    'www.linkedin.com/in/atprastyo',
                                    style: textTheme.bodyMedium
                                        ?.copyWith(height: 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 6),
                          TextButton(
                            style:
                                TextButton.styleFrom(padding: EdgeInsets.zero),
                            onPressed: () async {
                              final Uri? url =
                                  Uri.tryParse('https://github.com/atprastyo');
                              if (!await launchUrl(url!)) {
                                throw Exception('Could not launch $url');
                              }
                            },
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 22.0,
                                  child: Image.asset(
                                      path('images/github-logo.png'),
                                      color: Colors.blue.shade600,
                                      colorBlendMode: BlendMode.lighten),
                                ),
                                const SizedBox(width: 8.0),
                                Expanded(
                                  child: Text(
                                    'https://github.com/atprastyo',
                                    style: textTheme.bodyMedium
                                        ?.copyWith(height: 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 6),
                          TextButton(
                            style:
                                TextButton.styleFrom(padding: EdgeInsets.zero),
                            onPressed: () async {
                              final Uri? url = Uri.tryParse(
                                  'https://play.google.com/store/apps/dev?id=8932749481565676842');
                              if (!await launchUrl(url!)) {
                                throw Exception('Could not launch $url');
                              }
                            },
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 22.0,
                                  child:
                                      Image.asset(path('images/playstore.png')),
                                ),
                                const SizedBox(width: 8.0),
                                Expanded(
                                  child: Text(
                                    'devId=8932749481565676842',
                                    style: textTheme.bodyMedium
                                        ?.copyWith(height: 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    CardBox(
                      full: true,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4.0, top: 2.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Created with Flutter',
                              style: textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: isMobile ? null : TextAlign.center,
                            ),
                            const SizedBox(height: 4.0),
                            SelectableText(
                              'Updated at July, 2023',
                              textAlign: isMobile ? null : TextAlign.center,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero),
                              onPressed: () async {
                                final Uri? url =
                                    Uri.tryParse('https://atprastyo.github.io');
                                if (!await launchUrl(url!)) {
                                  throw Exception('Could not launch $url');
                                }
                              },
                              child: SelectableText(
                                'https://atprastyo.github.io',
                                style:
                                    textTheme.bodyMedium?.copyWith(height: 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CardBox(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 8.0,
                                right: 8.0,
                              ),
                              child: Icon(
                                Icons.work_history,
                                color: Colors.blueAccent,
                                size: isMobile ? 18 : null,
                              ),
                            ),
                            SelectableText(
                              'Experience',
                              style: textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Colors.blue.shade800,
                                height: 1,
                                fontSize: isMobile ? 16 : null,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      CardBox(
                        top: false,
                        child: Column(
                          children: [
                            _workExperience(
                              context,
                              'Software Engineer at Wahyoo, Jakarta',
                              'September 2019 – June 2023',
                              'Developing mobile application with flutter in an agile scrum development process environment. '
                                  '\nMy responsibilities:',
                              [
                                'Develop and deploy the built of mobile application.',
                                'Translating mockups or wireframes design into mobile user interface code.',
                                'Manage team updates and issues that emerge during the development process.'
                              ],
                              'nodejs, graphql, flutter, provider, firebase, figma',
                              'Team management, Mobile app development, Git',
                              results: [
                                'https://play-lh.googleusercontent.com/1njpyB0oStqpfuDxBHK1GaH8J1lw7sIBngxXdOzHPFez2b2BMKZWoifT_Iy90Xo7qKY=s96-rw',
                                'https://play-lh.googleusercontent.com/4pI3MKwyTkXo6Ar-pAbQTM3nNASkrLzIunvOQkJ4zBvvoGEiA7L9GRN6BgHMdE7Iy-TF=w480-h960-rw',
                              ],
                            ),
                            const Divider(height: 20),
                            _workExperience(
                              context,
                              'Software Engineer at Twiscode Pte. Ltd., Surabaya',
                              'September 2018 – August 2019',
                              'Develop mobile application with React Native in an agile scrum development process environment.'
                                  '\nMy responsibilities:',
                              [
                                'Develop and deploy the built of mobile application.',
                                'Translating mockups or wireframes design into mobile user interface code.'
                              ],
                              'react native, androidx, kotlin, laravel rest API',
                              'Team management, Mobile app development, Git',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      CardBox(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Icon(
                                Icons.menu_book,
                                color: Colors.blueAccent,
                                size: isMobile ? 18 : null,
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            Expanded(
                              child: SelectableText(
                                'Education',
                                style: textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blue.shade800,
                                  height: 1,
                                  fontSize: isMobile ? 16 : null,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      CardBox(
                        top: false,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SelectableText(
                              'Politeknik Elektronika Negeri Surabaya, Bachelor of Applied Science - BASc',
                              style: textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: isMobile ? 14 : null,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            SelectableText(
                              'August 2014 – August 2018',
                              style: textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54),
                            ),
                            const SizedBox(height: 8.0),
                            SelectableText(
                              "Learn every basic skill that can support the growth and development of the game industry, there's technical abilities, design skills, and business skills for entrepreneurship in the gaming industry. Completed my final project in the field of content management system and graphic rendering with the title “3D Inventory Information System Game Technology Laboratory using Structure Sensor” and graduated with GPA of 3.52/4.00.",
                              style: textTheme.bodyMedium?.copyWith(
                                color: Colors.black,
                                fontSize: isMobile ? 12 : null,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SelectableText(
                                  'Skill: ',
                                  style: textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Expanded(
                                  child: SelectableText(
                                    'android, php, nodejs, unity3d, management',
                                    style: textTheme.bodyLarge,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24.0)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    return Scaffold(backgroundColor: Colors.white, body: body);
  }

  Widget _workExperience(
    context,
    String title,
    String date,
    String description,
    List<String> tasks,
    String technology,
    String skill, {
    List<String>? results,
  }) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final bool isMobile = Responsive.isMobile(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          title,
          style: textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: isMobile ? 14 : null,
          ),
        ),
        const SizedBox(height: 4),
        SelectableText(
          date,
          style: textTheme.titleSmall?.copyWith(
            color: Colors.black54,
            fontSize: isMobile ? 12 : null,
          ),
        ),
        const SizedBox(height: 6),
        SelectableText(
          description,
          style: textTheme.bodyMedium?.copyWith(
            color: Colors.black,
            fontSize: isMobile ? 14 : null,
          ),
          textAlign: TextAlign.left,
        ),
        ...tasks.map(
          (task) => Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SelectableText('•  '),
              Expanded(
                child: SelectableText(
                  task,
                  style: textTheme.bodyMedium?.copyWith(
                    color: Colors.black,
                    fontSize: isMobile ? 14 : null,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 6),
        if (isMobile)
          SelectableText(
            'Technology: $technology',
            style: textTheme.bodyLarge?.copyWith(fontSize: 14),
          )
        else
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                'Technology: ',
                style:
                    textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
              ),
              Expanded(
                child: SelectableText(technology, style: textTheme.bodyLarge),
              ),
            ],
          ),
        const SizedBox(height: 4),
        if (isMobile)
          SelectableText('Skill: $skill',
              style: textTheme.bodyLarge?.copyWith(
                fontSize: 14,
              ))
        else
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                'Skill: ',
                style: textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: SelectableText(skill, style: textTheme.bodyLarge),
              ),
            ],
          ),
      ],
    );
  }
}

class CardBox extends StatelessWidget {
  const CardBox({
    Key? key,
    this.child,
    this.padding,
    this.top = true,
    this.full = false,
  }) : super(key: key);

  final Widget? child;
  final EdgeInsets? padding;
  final bool top;
  final bool full;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: full
            ? BorderRadius.circular(8)
            : BorderRadius.vertical(
                top: top ? const Radius.circular(8) : Radius.zero,
                bottom: top ? Radius.zero : const Radius.circular(8),
              ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(2, 4),
            blurRadius: 8,
          )
        ],
      ),
      child: Padding(
        padding: padding ?? EdgeInsets.fromLTRB(10, 10, 10, top ? 0 : 10),
        child: child,
      ),
    );
  }
}

String path(str) {
  return (kIsWeb) ? 'assets/$str' : str;
}
