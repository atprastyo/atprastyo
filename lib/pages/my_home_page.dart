import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:my_profile/core/utils/responsive.dart';
import 'package:my_profile/widgets/about_me.dart';
import 'package:my_profile/widgets/custom_divider.dart';
import 'package:my_profile/widgets/developed_section.dart';
import 'package:my_profile/widgets/experience_section.dart';
import 'package:my_profile/widgets/header_content.dart';
import 'package:my_profile/widgets/link_section.dart';
import 'package:my_profile/widgets/skill_section.dart';

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
    final bool isMobile = Responsive.isMobile(context);
    final Widget body = DecoratedBox(
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
          HeaderContent(blurRadius: blurRadius),
          const CustomDivider(),
          if (isMobile) ...[
            const AboutMe(),
            const SizedBox(height: 16),
            const ExperienceSection(),
            const SizedBox(height: 16),
            const SkillSection(),
            const SizedBox(height: 16),
            const LinkSection(),
            const SizedBox(height: 16),
            const DevelopedSection(),
          ] else
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      AboutMe(),
                      SizedBox(height: 16),
                      SkillSection(),
                      SizedBox(height: 16),
                      LinkSection(),
                      SizedBox(height: 16),
                      DevelopedSection(),
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Expanded(flex: 8, child: ExperienceSection()),
              ],
            ),
        ],
      ),
    );
    return Scaffold(backgroundColor: Colors.white, body: body);
  }
}
