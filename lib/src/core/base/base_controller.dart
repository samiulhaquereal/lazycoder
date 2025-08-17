import 'package:lazycoder/src/app_config/imports/import.dart';

abstract class BaseController extends GetxController {

  ApiServices get apiServices => ApiServices();
  BuildContext? get buildContext => FindContext.getContext();
  GetStorage get storage => GetStorage();
  AppLogger get console => AppLogger();

  void _navigateToScreen(Widget Function() screen) {
    Future.delayed(
      Duration.zero, () => Get.to(screen, opaque: false, fullscreenDialog: true),
    );
  }

  Future<void> showLoader() async {
    Future.delayed(
      Duration.zero,
      () => Get.toNamed(
            Routes.getLoadingRoute(),
      ),
    );
  }

  void closeLoader() {
    Get.until((route) => route.settings.name != Routes.getLoadingRoute());
  }

   Future<void> dataFetcher(
      Future<void> Function() fetchDataFunction, {
        bool shouldShowLoader = true,
        String? status,
      }) async {
      if (shouldShowLoader) {
        await showLoader();
      }
      try {
        await fetchDataFunction();
      } finally {
        if (shouldShowLoader) {
          closeLoader();
        }
      }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
