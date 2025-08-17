import 'package:lazycoder/src/app_config/imports/import.dart';

class ApiServices {

  static ApiServices? _instance;
  ApiServices._internal();
  factory ApiServices(){
    _instance ??= ApiServices._internal();
    return _instance!;
  }

  final RestApi _restApiClient = RestApi();

  Future<dynamic> getDemoData() async {
    final response = await _restApiClient.get(baseURL: ApiConstants.baseUrl,endpoint: ApiConstants().endpointGetData());
    return response;
  }
  
  Future<dynamic> postDemoData(Map<String, dynamic> data) async {
    final response = await _restApiClient.post(baseURL: ApiConstants.baseUrl,endpoint: ApiConstants().endpointGetData(),body: data,needEncode: true);
    return response;
  }

}
