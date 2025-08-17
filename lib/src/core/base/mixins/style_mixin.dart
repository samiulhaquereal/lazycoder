import 'package:lazycoder/src/app_config/imports/import.dart';

mixin StyleMixin {

  TextStyle get primaryTextStyle =>  GoogleFonts.poppins(
    color: AppColors.primaryColor,
    fontSize: 10.sp,
  );

  TextStyle get secondaryTextStyle =>  primaryTextStyle.copyWith(
    color: AppColors.blackColor,
  );

  TextStyle get appbarTitleTextStyle => primaryTextStyle.copyWith(
      fontSize: 13.sp,
      fontWeight: FontWeight.w700,
   );

   TextStyle get splashScreenTextStyle => primaryTextStyle.copyWith(
       fontSize: 17.sp,
       fontWeight: FontWeight.w700
   );

  TextStyle get headerTextStyle => primaryTextStyle.copyWith(
       fontSize:18.sp,
       fontWeight:FontWeight.w700
   );

   TextStyle get dialogBoxTextStyle => primaryTextStyle.copyWith(
      fontSize: 16.sp,
      color: AppColors.blackColor,
      fontWeight: FontWeight.w500,
   );

  ButtonStyle get buttonStyle => ElevatedButton.styleFrom(
    backgroundColor: AppColors.secondaryColor,
  );

  ButtonStyle get cancelButtonStyle => ElevatedButton.styleFrom(
    backgroundColor: AppColors.redColor,
  );

  ButtonStyle get acceptButtonStyle => ElevatedButton.styleFrom(
    backgroundColor: AppColors.greenColor,
  );

  ButtonStyle get homeButtonStyle => ElevatedButton.styleFrom(
      backgroundColor: AppColors.errorColor,
   );

  TextStyle get buttonTextStyle => primaryTextStyle.copyWith(
    color: AppColors.whiteColor,
  );
  
}
