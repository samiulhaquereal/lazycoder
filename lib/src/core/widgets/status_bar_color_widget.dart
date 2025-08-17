import 'package:lazycoder/src/app_config/imports/import.dart';

class StatusBarColorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppEnvironment.statusBarColor,
      statusBarIconBrightness: AppEnvironment.statusBarIconColor,
    ));
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppEnvironment.statusBarColor,
      statusBarIconBrightness: AppEnvironment.statusBarIconColor,
    ));
  }
}
