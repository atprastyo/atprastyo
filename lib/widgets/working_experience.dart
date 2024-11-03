import 'package:flutter/material.dart';
import 'package:my_profile/core/utils/responsive.dart';

class WorkingExperience extends StatelessWidget {
  const WorkingExperience({
    super.key,
    required this.title,
    required this.date,
    required this.description,
    required this.tasks,
    this.technology,
    this.skill,
    this.projects,
  });

  final String title;
  final String date;
  final String description;
  final List<String> tasks;
  final String? technology;
  final String? skill;
  final List<String>? projects;

  @override
  Widget build(BuildContext context) {
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
        if (technology != null) ...[
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
                  style: textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                Expanded(
                  child: SelectableText(
                    technology ?? '',
                    style: textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          const SizedBox(height: 4),
        ],
        if (skill != null) ...[
          if (isMobile)
            SelectableText(
              'Skill: $skill',
              style: textTheme.bodyLarge?.copyWith(fontSize: 14),
            )
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
                  child: SelectableText(
                    skill ?? '',
                    style: textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
        ]
      ],
    );
  }
}
