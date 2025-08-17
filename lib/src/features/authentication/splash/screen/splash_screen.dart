import 'package:lazycoder/src/app_config/imports/import.dart';

class SplashScreen extends BaseWidget<SplashController> {
  SplashScreen({super.key});

  @override
  Widget body(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        // image: DecorationImage(
        //   image: AssetImage(backgroundImage),
        //   fit: BoxFit.cover,
        // ),
      ),
      child: Column(
        mainAxisAlignment: centerMAA,
        children: [
          _buildSplashAnimation(),
          Gap(7.h),
          Text(
              AppStrings.appName,
              style: splashScreenTextStyle
          ),
        ],
      ),
    );
  }

  Widget _buildSplashAnimation() {
    return SplashAnimation(
          end: 70.w,
          seconds: 2,
          widget: AssetImageView(
            fileName: '',
            width: 70.w,
          )
        );
  }
}
