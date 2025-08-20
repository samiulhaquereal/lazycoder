import 'package:lazycoder/src/app_config/imports/import.dart';

class ApiServices {

  static ApiServices? _instance;
  ApiServices._internal();
  factory ApiServices(){
    _instance ??= ApiServices._internal();
    return _instance!;
  }

  final RestApi _restApiClient = RestApi();

  Future<dynamic> getSearch({required String name, required int page, required int perPage}) async {
    final response = await _restApiClient.get(baseURL: ApiConstants.baseUrl,endpoint: ApiConstants.search(name: name, page: page, perPage: perPage));
    return response;
  }

}
