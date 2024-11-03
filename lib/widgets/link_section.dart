import 'package:flutter/material.dart';
import 'package:my_profile/core/utils/responsive.dart';
import 'package:my_profile/widgets/card_box.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkSection extends StatelessWidget {
  const LinkSection({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final bool isMobile = Responsive.isMobile(context);
    return Column(
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
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                onPressed: () async {
                  final Uri? url = Uri.tryParse(
                    'www.linkedin.com/in/atprastyo',
                  );
                  if (!await launchUrl(url!)) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.0,
                      child: Image.asset(path('images/linkedin-logo.png')),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: Text(
                        'www.linkedin.com/in/atprastyo',
                        style: textTheme.bodyMedium?.copyWith(height: 1),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 6),
              TextButton(
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                onPressed: () async {
                  final Uri? url = Uri.tryParse('https://github.com/atprastyo');
                  if (!await launchUrl(url!)) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 22.0,
                      child: Image.asset(path('images/github-logo.png'),
                          color: Colors.blue.shade600,
                          colorBlendMode: BlendMode.lighten),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: Text(
                        'https://github.com/atprastyo',
                        style: textTheme.bodyMedium?.copyWith(height: 1),
                      ),
                    ),
                  ],
                ),
              ),
              // const SizedBox(height: 6),
              // TextButton(
              //   style: TextButton.styleFrom(padding: EdgeInsets.zero),
              //   onPressed: () async {
              //     final Uri? url = Uri.tryParse(
              //         'https://play.google.com/store/apps/dev?id=8932749481565676842');
              //     if (!await launchUrl(url!)) {
              //       throw Exception('Could not launch $url');
              //     }
              //   },
              //   child: Row(
              //     children: [
              //       SizedBox(
              //         height: 22.0,
              //         child: Image.asset(path('images/playstore.png')),
              //       ),
              //       const SizedBox(width: 8.0),
              //       Expanded(
              //         child: Text(
              //           'devId=8932749481565676842',
              //           style: textTheme.bodyMedium?.copyWith(height: 1),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}
