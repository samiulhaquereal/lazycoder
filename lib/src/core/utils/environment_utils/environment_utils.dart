import 'package:lazycoder/src/app_config/imports/import.dart';

Environment getEnvironmentFromString(String env) {
  switch (env.toLowerCase()) {
    case 'production':
      return Environment.production;
    default:
      return Environment.development;
  }
}