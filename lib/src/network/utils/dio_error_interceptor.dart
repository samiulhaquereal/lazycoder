import 'package:dio/dio.dart';
import 'package:lazycoder/src/app_config/imports/import.dart';

class ErrorInterceptors extends InterceptorsWrapper {

  @override
  Future<void> onError(DioError error, ErrorInterceptorHandler handler) async {
    final response = error.response;
    final requestOptions = error.requestOptions;
    final endpoint = requestOptions.path;
    Get.until((route) => route.settings.name != Routes.getLoadingRoute());
    AppLogger().log('Unexpected response: $response\nRequestOptions: $requestOptions\nEndpoint: $endpoint');
    return handler.next(error);
  }
}
