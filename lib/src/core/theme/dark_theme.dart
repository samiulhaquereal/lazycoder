import 'package:lazycoder/src/app_config/imports/import.dart';

class DarkTheme{

  final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppDarkColors.primaryColor,
    hintColor: AppDarkColors.accentColor,
    scaffoldBackgroundColor: AppDarkColors.backgroundColor,
    textTheme: AppTextStyle.darkTextTheme,  // Custom text styles
    appBarTheme: const AppBarTheme(
      color: AppDarkColors.appBarColor,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppDarkColors.buttonColor,
      textTheme: ButtonTextTheme.primary,
    ),
    chipTheme: const ChipThemeData(
      color: MaterialStatePropertyAll(
        AppDarkColors.backgroundColor,
      ),
      side: BorderSide.none,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
      border: _border(),
      enabledBorder: _border(),
      focusedBorder: _border(AppDarkColors.greyColor),
      errorBorder: _border(AppDarkColors.errorColor),
    ),
  );

  static _border([Color color = AppDarkColors.accentColor]) => OutlineInputBorder(
    borderSide: BorderSide(
      color: color,
      width: 3.sp,
    ),
    borderRadius: BorderRadius.circular(10.r),
  );

}
