/// Data model representing an education background entry.
class EducationItem {
  const EducationItem({
    required this.institution,
    required this.degree,
    required this.period,
    required this.description,
    required this.gpa,
    required this.skills,
  });

  final String institution;
  final String degree;
  final String period;
  final String description;
  final String gpa;
  final String skills;
}
