import 'package:flutter/material.dart';
import 'package:my_profile/core/utils/responsive.dart';
import 'package:my_profile/widgets/card_box.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final bool isMobile = Responsive.isMobile(context);
    return Column(
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
      ],
    );
  }
}
