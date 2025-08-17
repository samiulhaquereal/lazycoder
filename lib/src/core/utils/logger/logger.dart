import 'package:lazycoder/src/app_config/imports/import.dart';

class AppLogger {

  static AppLogger? _instance;
  AppLogger._internal();
  factory AppLogger(){
    _instance ??= AppLogger._internal();
    return _instance!;
  }

  void log(dynamic message, {String label = 'LOG'}) {
    if (kDebugMode) {
      debugPrint('[$label]: $message');
    }
  }

}


