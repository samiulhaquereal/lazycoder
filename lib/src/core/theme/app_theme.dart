import 'package:lazycoder/src/app_config/imports/import.dart';

class AppTheme {
  static final DarkTheme _darkTheme = DarkTheme();
  static final LightTheme _lightTheme = LightTheme();

  static ThemeData getTheme(Brightness brightness) {
    return brightness == Brightness.dark ? _darkTheme.darkTheme : _lightTheme.lightTheme;
  }

  static ThemeData getLightTheme() => _lightTheme.lightTheme;
  static ThemeData getDarkTheme() => _darkTheme.darkTheme;

  static TextStyle get displayLarge => AppTextStyle.lightTextTheme.displayLarge!;
  static TextStyle get bodyLarge => AppTextStyle.lightTextTheme.bodyLarge!;
  static TextStyle get bodyMedium => AppTextStyle.darkTextTheme.bodyMedium!;
}
