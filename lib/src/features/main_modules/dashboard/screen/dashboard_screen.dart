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
    return Column();
  }

}
