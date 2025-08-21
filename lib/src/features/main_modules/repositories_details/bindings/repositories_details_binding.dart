import 'package:lazycoder/src/app_config/imports/import.dart';

class RepositoriesDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RepositoriesDetailsController>(
            () => RepositoriesDetailsController(),
        fenix: true
    );
  }
}
