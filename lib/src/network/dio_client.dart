import 'package:lazycoder/src/app_config/imports/import.dart';
import 'package:dio/dio.dart' as dio_client;

class RestApi {

  static RestApi? _instance;
  RestApi._internal();
  factory RestApi(){
    _instance ??= RestApi._internal();
    return _instance!;
  }

  dio_client.Dio _createDioInstance(String baseUrl) {
    final dio = dio_client.Dio()
      ..options.baseUrl = baseUrl
      ..options.connectTimeout = const Duration(minutes: 5)
      ..options.receiveTimeout = const Duration(minutes: 5)
      ..options.responseType = dio_client.ResponseType.json
      ..interceptors.add(ErrorInterceptors());
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger());
    }
    return dio;
  }

  Map<String, String> _buildHeaders({Map<String, String>? additionalHeaders}) {
    final headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      if (additionalHeaders != null) ...additionalHeaders,
    };
    final storedCookie = ApiResponseHandler().cookie;
    if (storedCookie.isNotEmpty) {
      headers.addAll({'Cookie': storedCookie});
    }
    return headers;
  }

  Future<dynamic> get({required String baseURL,required String endpoint, Map<String, String>? params, Map<String, String>? additionalHeaders, bool? needEncode}) async {
    return _sendRequest(
        method: AppStrings.GET,
        baseURL: baseURL,
        endpoint: endpoint,
        params: params,
        needEncode: needEncode,
        additionalHeaders: additionalHeaders
    );
  }

  Future<dynamic> post({required String baseURL,required String endpoint, dynamic body, Map<String, String>? additionalHeaders, bool? needEncode}) async {
    return _sendRequest(
      method: AppStrings.POST,
      baseURL: baseURL,
      endpoint: endpoint,
      body: body,
      additionalHeaders: additionalHeaders,
      needEncode: needEncode,
    );
  }

  Future<dynamic> put({required String baseURL,required String endpoint, dynamic body, Map<String, String>? additionalHeaders, bool? needEncode}) async {
    return _sendRequest(
        method: AppStrings.PUT,
        baseURL: baseURL,
        endpoint: endpoint,
        body: body,
        needEncode: needEncode,
        additionalHeaders: additionalHeaders
    );
  }

  Future<dynamic> patch({required String baseURL,required String endpoint, dynamic body, Map<String, String>? additionalHeaders, bool? needEncode}) async {
    return _sendRequest(
        method: AppStrings.PATCH,
        baseURL: baseURL,
        endpoint: endpoint,
        body: body,
        needEncode: needEncode,
        additionalHeaders: additionalHeaders
    );
  }

  Future<dynamic> delete({required String baseURL,required String endpoint, dynamic body, Map<String, String>? params, Map<String, String>? additionalHeaders}) async {
    return _sendRequest(
        method: AppStrings.DELETE,
        endpoint: endpoint,
        params: params,
        baseURL: baseURL,
        additionalHeaders: additionalHeaders
    );
  }

  Future<dynamic> _sendRequest({
    required String method,
    required String baseURL,
    bool? needEncode,
    required String endpoint,
    dynamic body,
    Map<String, String>? params,
    Map<String, String>? additionalHeaders
  }) async {
    String os = PlatformUtils.getCurrentOS();
    if (os == 'Web') {
      return _sendRequestHandler(
          method: method,
          baseURL: baseURL,
          needEncode: needEncode,
          endpoint: endpoint,
          body: body,
          params: params,
          additionalHeaders: additionalHeaders
      );
    } else {
      final receivePort = ReceivePort();
      await Isolate.spawn(_isolateRequestHandler, {
        'sendPort': receivePort.sendPort,
        'method': method,
        'baseURL': baseURL,
        'needEncode': needEncode,
        'endpoint': endpoint,
        'body': body,
        'params': params,
        'additionalHeaders': additionalHeaders,
      });
      final response = await receivePort.first;
      return response;
    }
  }

  Future<void> _isolateRequestHandler(Map<String, dynamic> params) async {
    final sendPort = params['sendPort'];
    final method = params['method'];
    final baseURL = params['baseURL'];
    final needEncode = params['needEncode'];
    final endpoint = params['endpoint'];
    final body = params['body'];
    final queryParams = params['params'];
    final additionalHeaders = params['additionalHeaders'];

    final response = await _sendRequestHandler(
        method: method,
        baseURL: baseURL,
        needEncode: needEncode,
        endpoint: endpoint,
        body: body,
        params: queryParams,
        additionalHeaders: additionalHeaders
    );
    sendPort.send(response);
  }

  Future<dynamic> _sendRequestHandler<T>({
    required String method,
    required String baseURL,
    bool? needEncode,
    required String endpoint,
    dynamic body,
    Map<String, String>? params,
    SendPort? sendPort,
    Map<String, String>? additionalHeaders
  }) async {
    try {
      dio_client.Response response;
      final dio = _createDioInstance(baseURL);
      final uri = Uri.parse('$baseURL$endpoint');
      final requestHeaders = _buildHeaders(additionalHeaders: additionalHeaders);
      final requestBody = needEncode == true ? jsonEncode(body) : body;

      switch (method) {
        case AppStrings.GET:
          response = await dio.get(uri.toString(), queryParameters: params, options: dio_client.Options(headers: requestHeaders))
              .then((value) => value);
          break;
        case AppStrings.POST:
          response = await dio.post(uri.toString(), data: requestBody, options: dio_client.Options(headers: requestHeaders))
              .then((value) => value);
          break;
        case AppStrings.PUT:
          response = await dio.put(uri.toString(), data: requestBody, options: dio_client.Options(headers: requestHeaders))
              .then((value) => value);
          break;
        case AppStrings.PATCH:
          response = await dio.patch(uri.toString(), data: requestBody, options: dio_client.Options(headers: requestHeaders))
              .then((value) => value);
          break;
        case AppStrings.DELETE:
          response = await dio.delete(uri.toString(), data: requestBody, options:dio_client.Options(headers: requestHeaders))
              .then((value) => value);
          break;
        default:
          throw Exception('Unsupported HTTP method: $method');
      }

      var handleResponse = ApiResponseHandler().handleResponse(response: response, sendPort: sendPort);
      String cookieResponse = ApiResponseHandler().cookie;
      Map<String, dynamic> data = {
        "records": handleResponse,
        "cookie": cookieResponse,
      };
      return data;
    } catch (e) {
      AppLogger().log('Error occurred while making $method request: $e');
    }
  }
}
