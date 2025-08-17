import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

class PlatformUtils {
  static String getCurrentOS() {
    if (kIsWeb) return 'Web';

    if (Platform.isAndroid) return 'Android';
    if (Platform.isIOS) return 'iOS';
    if (Platform.isWindows) return 'Windows';
    if (Platform.isLinux) return 'Linux';
    if (Platform.isMacOS) return 'macOS';
    if (Platform.isFuchsia) return 'Fuchsia';

    return 'Unknown';
  }

  static bool isWeb() => kIsWeb;
  static bool isMobile() => !kIsWeb && (Platform.isAndroid || Platform.isIOS);
  static bool isDesktop() => !kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS);
}
