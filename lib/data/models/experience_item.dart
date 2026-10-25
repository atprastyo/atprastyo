/// Data model representing a professional work experience entry.
class ExperienceItem {
  const ExperienceItem({
    required this.title,
    required this.period,
    required this.description,
    required this.tasks,
    this.technology,
    this.skill,
    this.projects,
  });

  final String title;
  final String period;
  final String description;
  final List<String> tasks;
  final String? technology;
  final String? skill;
  final List<String>? projects;
}
