import 'package:lazycoder/src/app_config/imports/import.dart';

class ApiConstants {

  static String get baseUrl => AppEnvironment.baseUrl;

  static const endpointSearch = String.fromEnvironment('ENDPOINT_SEARCH');

  static String search({required String name,required int page,required int perPage}){
    return '$endpointSearch?q=$name&page=$page&per_page=$perPage&sort=stars&order=desc';
  }
}
