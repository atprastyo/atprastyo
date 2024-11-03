import 'package:flutter/material.dart';
import 'package:my_profile/core/utils/responsive.dart';
import 'package:my_profile/widgets/card_box.dart';
import 'package:my_profile/widgets/working_experience.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final bool isMobile = Responsive.isMobile(context);
    return Column(
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
        const CardBox(
          top: false,
          child: Column(
            children: [
              WorkingExperience(
                title: 'Software Engineer at Wahyoo, Jakarta',
                date: 'September 2019 – June 2023',
                description:
                    'Developing mobile application with flutter in an agile scrum development process environment. '
                    '\nMy responsibilities:',
                tasks: [
                  'Develop and deploy the built of mobile application.',
                  'Translating mockups or wireframes design into mobile user interface code.',
                  'Manage team updates and issues that emerge during the development process.'
                ],
                technology:
                    'nodejs, graphql, flutter, provider, firebase, figma',
                skill: 'Team management, Mobile app development, Git',
                projects: [
                  'https://play-lh.googleusercontent.com/1njpyB0oStqpfuDxBHK1GaH8J1lw7sIBngxXdOzHPFez2b2BMKZWoifT_Iy90Xo7qKY=s96-rw',
                  'https://play-lh.googleusercontent.com/4pI3MKwyTkXo6Ar-pAbQTM3nNASkrLzIunvOQkJ4zBvvoGEiA7L9GRN6BgHMdE7Iy-TF=w480-h960-rw',
                ],
              ),
              Divider(height: 20),
              WorkingExperience(
                title: 'Software Engineer at Twiscode Pte. Ltd., Surabaya',
                date: 'September 2018 – August 2019',
                description:
                    'Develop mobile application with React Native in an agile scrum development process environment.'
                    '\nMy responsibilities:',
                tasks: [
                  'Develop and deploy the built of mobile application.',
                  'Translating mockups or wireframes design into mobile user interface code.'
                ],
                technology: 'react native, androidx, kotlin, laravel rest API',
                skill: 'Team management, Mobile app development, Git',
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
                'Electronic Engineering Polytechnic Institute of Surabaya, '
                'Bachelor of Applied Science - BASc',
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: isMobile ? 14 : null,
                ),
              ),
              const SizedBox(height: 8.0),
              SelectableText(
                'August 2014 – August 2018',
                style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w400, color: Colors.black54),
              ),
              const SizedBox(height: 8.0),
              SelectableText(
                "Learn every basic skill that can support the growth and "
                "development of the game industry, there's technical "
                "abilities, design skills, and business skills for "
                "entrepreneurship in the gaming industry. "
                "Completed my final project in the field of content management "
                "system and graphic rendering with the title “3D Inventory "
                "Information System Game Technology Laboratory using Structure "
                "Sensor” and graduated with GPA of 3.52/4.00.",
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
      ],
    );
  }
}
