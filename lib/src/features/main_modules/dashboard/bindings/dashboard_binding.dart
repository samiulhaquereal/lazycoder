import 'package:lazycoder/src/app_config/imports/import.dart';


class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
            () => DashboardController(),
        fenix: true
    );
  }
}

