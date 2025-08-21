import 'package:lazycoder/src/app_config/imports/import.dart';

class SplashScreen extends BaseWidget<SplashController> {
  SplashScreen({super.key});

  @override
  Widget body(BuildContext context) {
    return Container(
      height: Get.height.h,
      width: Get.width.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColors.backgroundColor
      ),
      child: Column(
        mainAxisAlignment: centerMAA,
        children: [
          buildSplashAnimation(),
          RetCore.space(7.h),
          Text(
              AppStrings.appName,
              style: splashScreenTextStyle
          ),
        ],
      ),
    );
  }
}
