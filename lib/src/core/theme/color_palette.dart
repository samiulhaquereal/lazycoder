import 'package:lazycoder/src/app_config/imports/import.dart';

class AppLightColors {
  static const Color primaryColor = Color(0xFF42A5F5);
  static const Color accentColor = Color(0xFFFFC107);
  static const Color appBarColor = Color(0xFFFFFFFF);
  static const Color appBarTextColor = Color(0xFF000000);
  static const Color buttonColor = Color(0xFF42A5F5);
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Colors.grey;
  static const Color errorColor = Colors.redAccent;
  static const Color transparentColor = Colors.transparent;
  static const Color backgroundColor = Color.fromRGBO(24, 24, 32, 1);
}

class AppDarkColors {
  static const Color primaryColor = Color(0xFFBB86FC);
  static const Color accentColor = Color(0xFF03DAC6);
  static const Color appBarColor = Color(0xFF1F1F1F);
  static const Color appBarTextColor = Color(0xFFFFFFFF);
  static const Color buttonColor = Color(0xFFBB86FC);
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Colors.grey;
  static const Color errorColor = Colors.redAccent;
  static const Color transparentColor = Colors.transparent;
  static const Color backgroundColor = Color.fromRGBO(24, 24, 32, 1);
}

abstract class AppColors {
  static Color primaryColor = ColorParse().parseColor('001E6C');
  static Color secondaryColor = ColorParse().parseColor('0078E6');
  static Color backgroundColor = ColorParse().parseColor('0d1117');
  static const Color grayColor = Colors.grey;
  static const Color transparentColor = Colors.transparent;
  static Color? customeGrayColor = Colors.grey[700];
  static const Color greenColor = Colors.green;
  static const Color redColor = Colors.red;
  static const Color blackColor = Colors.black;
  static const Color whiteColor = Colors.white;
  static Color errorColor = ColorParse().parseColor('bf2d26');
}
