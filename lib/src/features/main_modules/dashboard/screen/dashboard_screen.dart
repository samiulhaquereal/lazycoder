import 'package:lazycoder/src/app_config/imports/import.dart';

class DashboardScreen extends BaseView<DashboardController> {
  DashboardScreen({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Color pageBackgroundColor() {
    return AppColors.backgroundColor;
  }

  @override
  Future<bool> onWillPop() async {
    return controller.showAppExitModal();
  }

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Text(
            AppStrings.repositories,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor,
            ),
          ),
        ),
        RetCore.space(10.h),
        buildRepositoriesList(controller),
      ],
    );
  }

}
