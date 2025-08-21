import 'package:lazycoder/src/app_config/imports/import.dart';

Widget buildSplashAnimation({String? file}) {
  return SplashAnimation(
      end: 70.w,
      seconds: 2,
      widget: AssetImageView(
        fileName: file ?? '',
        width: 70.w,
      )
  );
}