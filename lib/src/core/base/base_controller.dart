import 'package:lazycoder/src/app_config/imports/import.dart';

abstract class BaseController extends GetxController {

  ApiServices get apiServices => ApiServices();
  BuildContext? get buildContext => FindContext.getContext();
  GetStorage get storage => GetStorage();
  AppLogger get console => AppLogger();

  RxBool ignore = false.obs;

  @override
  void onClose() {
    super.onClose();
  }
}
