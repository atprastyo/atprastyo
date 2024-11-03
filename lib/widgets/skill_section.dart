import 'package:flutter/material.dart';
import 'package:my_profile/core/utils/responsive.dart';
import 'package:my_profile/widgets/card_box.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

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
                          '> 4 Years',
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
      ],
    );
  }
}
