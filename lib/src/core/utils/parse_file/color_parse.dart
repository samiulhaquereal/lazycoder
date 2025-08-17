import 'package:lazycoder/src/app_config/imports/import.dart';

class ColorParse{

  static ColorParse? _instance;
  ColorParse._internal();
  factory ColorParse(){
    _instance ??= ColorParse._internal();
    return _instance!;
  }

  Color parseColor(String colorCode) {
    if (colorCode.startsWith('#')) {
      colorCode = colorCode.substring(1);
    }
    colorCode = 'FF$colorCode';

    int colorValue = int.parse(colorCode, radix: 16);

    return Color(colorValue);
  }
}
