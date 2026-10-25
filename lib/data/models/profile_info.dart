/// Data model for the user's personal details and bio.
class ProfileInfo {
  const ProfileInfo({
    required this.name,
    required this.title,
    required this.phone,
    required this.email,
    required this.location,
    required this.about,
    required this.areasOfExpertise,
  });

  final String name;
  final String title;
  final String phone;
  final String email;
  final String location;
  final String about;
  final String areasOfExpertise;
}
