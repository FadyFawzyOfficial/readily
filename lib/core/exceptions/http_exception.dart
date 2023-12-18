import 'package:dio/dio.dart';

import 'app_exception.dart';

class HttpException extends AppException {
  HttpException({required super.message});

  factory HttpException.formDio({required DioException dioException}) {
    return switch (dioException.type) {
      DioExceptionType.connectionTimeout =>
        HttpException(message: 'Connection timeout'),
      DioExceptionType.sendTimeout => HttpException(message: 'Send Timeout'),
      DioExceptionType.receiveTimeout =>
        HttpException(message: 'Receive Timeout'),
      DioExceptionType.badCertificate =>
        HttpException(message: 'Bad Certificate'),
      DioExceptionType.badResponse =>
        HttpException.fromResponse(response: dioException.response!),
      DioExceptionType.cancel => HttpException(message: 'Request is Canceled'),
      DioExceptionType.connectionError =>
        HttpException(message: 'No Internet Connection'),
      DioExceptionType.unknown => HttpException(
          message: 'Oops, there was an error, please try again later!',
        ),
    };
  }

  factory HttpException.fromResponse({required Response response}) {
    final statusCode = response.statusCode!;
    if (statusCode >= 400 && statusCode <= 403) {
      return HttpException(message: response.data['error']['message']);
    } else if (statusCode == 404) {
      return HttpException(message: 'Data Not Found, please try again later!');
    } else if (statusCode >= 500) {
      return HttpException(message: 'Server Error, please try again later!');
    }
    return HttpException(message: 'Network Error, please try again later!');
  }
}
