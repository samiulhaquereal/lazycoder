import 'package:lazycoder/src/app_config/imports/import.dart';
import 'dart:developer';

class FindContext{

  static FindContext? _instance;
  FindContext._internal();
  factory FindContext(){
    _instance ??= FindContext._internal();
    return _instance!;
  }

  static BuildContext? getContext() {
    BuildContext? context = navigatorKey.currentContext;
    if (context == null) {
      log('Warning: BuildContext is null.');
    }
    return context;
  }
}
