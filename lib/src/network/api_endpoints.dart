import 'package:lazycoder/src/app_config/imports/import.dart';

class ApiConstants {

  static String get baseUrl => AppEnvironment.baseUrl;
  static String get token => EnvVariables.token;

  String endpointGetData(){
    String url = '/saveDemoData';
    return url;
  }
  
  String endpointLogin({required String id}){
    String url = '/demodata?demoId=$id';
    return url;
  }
}
