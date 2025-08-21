import 'package:lazycoder/src/app_config/imports/import.dart';

class SplashController extends BaseController{

  @override
  void onInit() async{
    super.onInit();
    await Future.delayed(const Duration(seconds: 2));
    Get.offNamed(Routes.getDashboardRoute());
  }

  @override
  void onClose() {
    super.onClose();
  }
}
