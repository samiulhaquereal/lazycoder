import 'package:lazycoder/src/app_config/imports/import.dart';

class Parse{

  static Parse? _instance;
  Parse._internal();
  factory Parse(){
    _instance ??= Parse._internal();
    return _instance!;
  }

}
