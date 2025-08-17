import 'package:lazycoder/src/app_config/imports/import.dart';

class CommonWidgets {

  static CommonWidgets? _instance;
  CommonWidgets._internal();
  factory CommonWidgets(){
    _instance ??= CommonWidgets._internal();
    return _instance!;
  }

  void demoFunction(){
  
  }
}
