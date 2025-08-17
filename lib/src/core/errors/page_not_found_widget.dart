import 'package:lazycoder/src/app_config/imports/import.dart';

class NotFoundScreen extends StatelessWidget with StyleMixin,ShorterEnumMixin{
  NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.transparentColor,
        iconTheme: IconThemeData(color: AppColors.primaryColor),
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
            AppEnvironment.title,
            style: appbarTitleTextStyle
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w,vertical: 16.0.h),
          child: Column(
            mainAxisAlignment: centerMAA,
            children: [
              Icon(Icons.warning, color: AppColors.errorColor, size: 70.sp),
              Gap(16.h),
              Text(
                AppStrings.pageNotFound,
                textAlign: centerTA,
                style:  headerTextStyle.copyWith(
                    color: AppColors.errorColor
                ),
              ),
              Gap(20.h),
              Text(AppStrings.pageNotFoundMessage,
                textAlign: centerTA,
                style: dialogBoxTextStyle,
              ),
              Gap(22.h),
              ElevatedButton(
                onPressed:()=> Navigator.pop(context),
                style: homeButtonStyle,
                child: Text(AppStrings.back,style: dialogBoxTextStyle.copyWith(color: AppColors.whiteColor)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
