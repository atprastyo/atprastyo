/// Centralized asset path definitions and resolution helpers.
class AppAssets {
  AppAssets._();

  static const String _imagesPath = 'assets/images';

  static const String profileCircle = '$_imagesPath/profile_circle.png';
  static const String profilePic = '$_imagesPath/profile_pic.jpg';
  static const String profile = '$_imagesPath/profile.jpg';
  static const String linkedinLogo = '$_imagesPath/linkedin-logo.png';
  static const String githubLogo = '$_imagesPath/github-logo.png';
  static const String playstoreLogo = '$_imagesPath/playstore.png';
  static const String devIcon = '$_imagesPath/dev-icon.png';
  static const String devIconTransparent = '$_imagesPath/dev-icon-transparent.png';

  /// Returns canonical asset path.
  static String resolve(String assetPath) {
    if (assetPath.startsWith('assets/')) {
      return assetPath;
    }
    return 'assets/$assetPath';
  }
}
