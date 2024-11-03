import 'package:flutter/material.dart';
import 'package:my_profile/core/utils/responsive.dart';
import 'package:my_profile/widgets/card_box.dart';
import 'package:url_launcher/url_launcher.dart';

class DevelopedSection extends StatelessWidget {
  const DevelopedSection({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final bool isMobile = Responsive.isMobile(context);
    return CardBox(
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
              'Updated at November, 2024',
              textAlign: isMobile ? null : TextAlign.center,
            ),
            // TextButton(
            //   style: TextButton.styleFrom(padding: EdgeInsets.zero),
            //   onPressed: () async {
            //     final Uri? url = Uri.tryParse('https://atprastyo.github.io');
            //     if (!await launchUrl(url!)) {
            //       throw Exception('Could not launch $url');
            //     }
            //   },
            //   child: SelectableText(
            //     'https://atprastyo.github.io',
            //     style: textTheme.bodyMedium?.copyWith(height: 1),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
