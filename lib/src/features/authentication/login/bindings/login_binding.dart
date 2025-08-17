import 'package:lazycoder/src/app_config/imports/import.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(
        LoginController(),
        permanent: true
    );
  }
}
