import 'package:lazycoder/src/app_config/imports/import.dart';

class LightTheme{

  final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppLightColors.primaryColor,
    hintColor: AppLightColors.accentColor,
    scaffoldBackgroundColor: AppLightColors.backgroundColor,
    textTheme: AppTextStyle.lightTextTheme,
    appBarTheme: const AppBarTheme(
      color: AppLightColors.appBarColor,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppLightColors.buttonColor,
      textTheme: ButtonTextTheme.primary,
    ),
    chipTheme: const ChipThemeData(
      color: MaterialStatePropertyAll(
        AppLightColors.backgroundColor,
      ),
      side: BorderSide.none,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
      border: _border(),
      enabledBorder: _border(),
      focusedBorder: _border(AppLightColors.greyColor),
      errorBorder: _border(AppLightColors.errorColor),
    ),
  );

  static _border([Color color = AppLightColors.accentColor]) => OutlineInputBorder(
    borderSide: BorderSide(
      color: color,
      width: 3.sp,
    ),
    borderRadius: BorderRadius.circular(10.r),
  );
}
