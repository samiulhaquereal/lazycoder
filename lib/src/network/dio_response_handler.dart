import 'package:lazycoder/src/app_config/imports/import.dart';
import 'dart:developer';
import 'package:dio/dio.dart' as dio;

class ApiResponseHandler{

  static ApiResponseHandler? _instance;
  ApiResponseHandler._internal();
  factory ApiResponseHandler(){
    _instance ??= ApiResponseHandler._internal();
    return _instance!;
  }

  dynamic handleResponse({required dio.Response response, SendPort? sendPort}) {
    if (response.statusCode != null && response.statusCode! >= 400) {
      try {
        final decodedResponse = response.data;
        return decodedResponse;
      } catch (e) {
        log('Error decoding response: ${response.data}');
      }
    } else if (response.statusCode != null && response.statusCode! >= 200) {
      final decodedResponse = response.data;
      if (decodedResponse is Map<String, dynamic> || decodedResponse is List<dynamic>) {
        if (sendPort != null) {
          sendPort.send(decodedResponse);
        }
        return decodedResponse;
      } else {
        log('Unexpected response type: ${decodedResponse.runtimeType}');
      }
    } else {
      log('Unexpected status code: ${response.statusCode}');
      final error = {'error': 'Unexpected status code: ${response.statusCode}'};
      if (sendPort != null) {
        sendPort.send(error);
      } else {
        throw Exception('Unexpected status code: ${response.statusCode}');
      }
    }
  }

  String cookieSet({required dio.Response response}) {
    final setCookieHeaders = response.headers.map['set-cookie'];
    return setCookieHeaders?.join('; ') ?? '';
  }

}
