import 'package:lazycoder/src/app_config/imports/import.dart';

class PlatformResponsive{

  static PlatformResponsive? _instance;
  PlatformResponsive._internal();
  factory PlatformResponsive(){
    _instance ??= PlatformResponsive._internal();
    return _instance!;
  }

  static bool isMobile() {
    BuildContext? context = FindContext.getContext();
    var width = MediaQuery.of(context!).size.width;
    var orientation = MediaQuery.of(context).orientation;
    return orientation == Orientation.portrait && width <= 700;
  }

  static bool isTablet() {
    BuildContext? context = FindContext.getContext();
    var width = MediaQuery.of(context!).size.width;
    var orientation = MediaQuery.of(context).orientation;
    return orientation == Orientation.portrait && width > 700 && width < 1024;
  }

  static bool isDesktop() {
    BuildContext? context = FindContext.getContext();
    var width = MediaQuery.of(context!).size.width;
    return width >= 1024;
  }

}
