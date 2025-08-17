import 'package:lazycoder/src/app_config/imports/import.dart';

class AppTextStyle{

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold, color: Colors.black),
    bodyLarge: TextStyle(fontSize: 16.sp, color: Colors.black87),
    bodyMedium: TextStyle(fontSize: 14.sp, color: Colors.black54),
    labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold, color: Colors.white),
    bodyLarge: TextStyle(fontSize: 16.sp, color: Colors.white70),
    bodyMedium: TextStyle(fontSize: 14.sp, color: Colors.white54),
    labelLarge: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: Colors.black),
  );
}
