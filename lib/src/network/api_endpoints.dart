import 'package:lazycoder/src/app_config/imports/import.dart';

class ApiConstants {

  static String get baseUrl => AppEnvironment.baseUrl;

  static const endpointSearch = String.fromEnvironment('ENDPOINT_SEARCH');

  static String search({required String name}){
    return '$endpointSearch$name';
  }
}
