import 'package:lazycoder/src/app_config/imports/import.dart';

class InitialBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.lazyPut<DashboardController>(
            () => DashboardController(),
        fenix: true
    );
  }
}
