import 'package:dio/dio.dart';

class BaseApiService {
  final Dio _dio;
  final String _baseUrl = 'https://your-base-url.com/api';

  BaseApiService() : _dio = Dio() {
    _dio.options.baseUrl = _baseUrl;
    _setupDio();
  }

  void _setupDio() {
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    // Optional: Add interceptors for logging, token handling, etc
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  Future<dynamic> get(String path, {Map<String, dynamic>? queryParams}) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParams);
      return response.data;
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Future<dynamic> post(String path, dynamic data) async {
    try {
      final response = await _dio.post(path, data: data);
      return response.data;
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Exception _handleError(DioException e) {
    return Exception('Network error: ${e.message}');
  }
}
