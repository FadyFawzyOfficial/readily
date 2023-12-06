import 'package:dio/dio.dart' show Dio;

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';

  final Dio _dio;

  ApiService({required Dio dio}) : _dio = dio;

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
