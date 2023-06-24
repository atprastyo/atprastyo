import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = GoogleFonts.tajawal(color: Colors.black87);

    return MaterialApp(
      title: 'Flutter Demo',
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(right: 0),
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
          border: Border.all(
            color: Colors.black12,
            width: 2,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            DecoratedBox(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(88),
                          child: Image.asset('images/profile_circle.png',
                              height: 160),
                        ),
                      ),
                    ),
                    const SizedBox(width: 24.0),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Agus Tri Prastyo',
                            style: textTheme.headline3?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            'Software Engineer',
                            style: textTheme.headline5?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.blue.shade900,
                            ),
                          ),
                          const SizedBox(height: 6.0),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Icons.whatsapp, color: Colors.black87),
                              const SizedBox(width: 4.0),
                              Text(
                                '+6281939143915',
                                style: textTheme.subtitle2?.copyWith(
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
                              Text(
                                'agustrip@gmail.com',
                                style: textTheme.bodyText2?.copyWith(
                                  height: 1.4,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            'Kedung losari, Tembelang, Jombang, East Java, Indonesia, 61452',
                            style: textTheme.bodyText1?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.blue.shade700,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CardBox(
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 8.0, right: 8.0),
                              child: Icon(
                                Icons.account_box,
                                color: Colors.blueAccent,
                              ),
                            ),
                            Text(
                              'About Me',
                              style: textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Colors.blue.shade800,
                                height: 1.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      CardBox(
                        top: false,
                        child: Text(
                          "I dedicated to my own continual self development. Currently, I'm developing a mobile application using Flutter with graphql network API integration, then I'm also interested in learning about artificial intelligence and machine learning for research purposes.",
                          style: textTheme.bodyMedium,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      const SizedBox(height: 12),
                      CardBox(
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                bottom: 8.0,
                                right: 8.0,
                              ),
                              child: Icon(
                                Icons.laptop_mac,
                                color: Colors.blueAccent,
                              ),
                            ),
                            Text(
                              'Skill',
                              style: textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Colors.blue.shade800,
                                height: 1,
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
                                    child: Text(
                                      'Flutter',
                                      style: textTheme.subtitle1?.copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: LinearProgressIndicator(
                                      minHeight: 16,
                                      value: 0.95,
                                      color: Colors.blue.shade800,
                                      backgroundColor: Colors.blue.shade50,
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
                                    child: Text(
                                      'Git',
                                      style: textTheme.subtitle1?.copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: LinearProgressIndicator(
                                      minHeight: 16,
                                      value: 0.8,
                                      color: Colors.blue.shade600,
                                      backgroundColor: Colors.blue.shade50,
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
                                    child: Text(
                                      'Android',
                                      style: textTheme.subtitle1?.copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: LinearProgressIndicator(
                                      minHeight: 16,
                                      value: 0.6,
                                      color: Colors.blue.shade400,
                                      backgroundColor: Colors.blue.shade50,
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
                                    child: Text(
                                      'Golang',
                                      style: textTheme.subtitle1?.copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: LinearProgressIndicator(
                                      minHeight: 16,
                                      value: 0.6,
                                      color: Colors.blue.shade400,
                                      backgroundColor: Colors.blue.shade50,
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
                                    child: Text(
                                      'Nodejs',
                                      style: textTheme.subtitle1?.copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: LinearProgressIndicator(
                                      minHeight: 16,
                                      value: 0.6,
                                      color: Colors.blue.shade400,
                                      backgroundColor: Colors.blue.shade50,
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
                                    child: Text(
                                      'Management',
                                      style: textTheme.subtitle1?.copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: LinearProgressIndicator(
                                      minHeight: 16,
                                      value: 0.6,
                                      color: Colors.blue.shade400,
                                      backgroundColor: Colors.blue.shade50,
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
                            const Padding(
                              padding: EdgeInsets.only(bottom: 8.0, right: 8.0),
                              child: Icon(
                                Icons.link,
                                color: Colors.blueAccent,
                              ),
                            ),
                            Text(
                              'Link',
                              style: textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Colors.blue.shade800,
                                height: 1,
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
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero),
                              onPressed: () async {
                                final Uri? url = Uri.tryParse(
                                  'www.linkedin.com/in/agustrip',
                                );
                                if (!await launchUrl(url!)) {
                                  throw Exception('Could not launch $url');
                                }
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 20.0,
                                    child:
                                        Image.asset('images/linkedin-logo.png'),
                                  ),
                                  const SizedBox(width: 8.0),
                                  Expanded(
                                    child: Text(
                                      'www.linkedin.com/in/agustrip',
                                      style: textTheme.bodyText2
                                          ?.copyWith(height: 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6),
                            TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero),
                              onPressed: () async {
                                final Uri? url = Uri.tryParse(
                                    'https://github.com/atprastyo');
                                if (!await launchUrl(url!)) {
                                  throw Exception('Could not launch $url');
                                }
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 22.0,
                                    child: Image.asset('images/github-logo.png',
                                        color: Colors.blue.shade600,
                                        colorBlendMode: BlendMode.lighten),
                                  ),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    'https://github.com/atprastyo',
                                    style: textTheme.bodyText2
                                        ?.copyWith(height: 1),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6),
                            TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero),
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
                                    child: Image.asset('images/playstore.png'),
                                  ),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    'devid=8932749481565676842',
                                    style: textTheme.bodyText2
                                        ?.copyWith(height: 1),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CardBox(
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                  bottom: 8.0,
                                  right: 8.0,
                                ),
                                child: Icon(
                                  Icons.work_history,
                                  color: Colors.blueAccent,
                                ),
                              ),
                              Text(
                                'Experience',
                                style: textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blue.shade800,
                                  height: 1,
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
                                'September 2019 – Present',
                                'Developing mobile application with flutter in an agile scrum development process environment. '
                                    '\nMy responsibilities: \n•  Develop and deploy our built design pattern of mobile application.'
                                    '\n•  Translating mockups and wireframes design into mobile user interface code.',
                                'nodejs, graphql, flutter, provider, firebase',
                                'Team management, Mobile app development, Git',
                              ),
                              const Divider(height: 20),
                              _workExperience(
                                context,
                                'Software Engineer at Twiscode Pte. Ltd., Surabaya',
                                'September 2018 – August 2019',
                                'Develop mobile application with React Native in an agile scrum development process environment. Twiscode is a digital agency for brand consultant where update business one step ahead with technology.',
                                'react native, androidx, kotlin, rest API',
                                'Team management, Mobile app development, Git',
                              ),
                              const SizedBox(height: 8.0),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        CardBox(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Icon(
                                  Icons.menu_book,
                                  color: Colors.blueAccent,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              Expanded(
                                child: Text(
                                  'Education',
                                  style: textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.blue.shade800,
                                    height: 1,
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
                              Text(
                                'Politeknik Elektronika Negeri Surabaya, Bachelor of Applied Science - BASc',
                                style: textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                'August 2014 – August 2018',
                                style: textTheme.bodyText2?.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54),
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                "Learn every basic skill that can support the growth and development of the game industry, there's technical abilities, design skills, and business skills for entrepreneurship in the gaming industry. Completed my final project in the field of content management system and graphic rendering with the title “3D Inventory Information System Game Technology Laboratory using Structure Sensor” and graduated with GPA of 3.52/4.00.",
                                style: textTheme.bodyMedium
                                    ?.copyWith(color: Colors.black),
                                textAlign: TextAlign.justify,
                              ),
                              const SizedBox(height: 10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Skill: ',
                                    style: textTheme.bodyText1?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'android, php, nodejs, unity3d, management',
                                      style: textTheme.bodyText1,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
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
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Contact',
      //   child: const Icon(Icons.contact_mail),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _workExperience(
    context,
    String s,
    String t,
    String u,
    String v,
    String w,
  ) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t,
          style: textTheme.subtitle2?.copyWith(
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          s,
          style: textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          u,
          style: textTheme.bodyMedium?.copyWith(color: Colors.black),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Text(
              'Technology: ',
              style: textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w600),
            ),
            Text(v, style: textTheme.bodyText1),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Skill: ',
              style: textTheme.bodyText1?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: Text(w, style: textTheme.bodyText1),
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
  }) : super(key: key);

  final Widget? child;
  final EdgeInsets? padding;
  final bool top;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
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
        padding: padding ?? const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        child: child,
      ),
    );
  }
}

class HeaderBanner extends StatelessWidget {
  const HeaderBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white38,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white38,
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(2, 4),
              blurRadius: 8,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/dev-icon-transparent.png',
              color: Color(0xff10b981),
            ),
            // const SizedBox(width: 32),
            // Text(
            //   'Madevagust',
            //   style: GoogleFonts.aclonica(
            //     fontWeight: FontWeight.w600,
            //     fontSize: 60,
            //     color: Color(0xff10b981),
            //     decoration: TextDecoration.none,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
