import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

/// Helper to safely launch external URLs.
class UrlHelper {
  UrlHelper._();

  static Future<bool> launch(String rawUrl) async {
    try {
      String urlString = rawUrl.trim();
      if (!urlString.startsWith('http://') && !urlString.startsWith('https://')) {
        urlString = 'https://$urlString';
      }

      final uri = Uri.parse(urlString);
      if (await canLaunchUrl(uri)) {
        return await launchUrl(uri, mode: LaunchMode.platformDefault);
      } else {
        debugPrint('Could not launch URL: $rawUrl');
        return false;
      }
    } catch (e) {
      debugPrint('Error launching URL $rawUrl: $e');
      return false;
    }
  }
}
