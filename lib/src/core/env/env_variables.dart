import 'package:lazycoder/src/app_config/imports/import.dart';

class EnvVariables {
  EnvVariables._();

  static String get token => dotenv.env['TOKEN'] ?? '';
  static String get apiVersion => dotenv.env['API_VERSION'] ?? '';
}

