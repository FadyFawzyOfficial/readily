import 'package:dio/dio.dart';

class AppException {
  final String message;

  AppException({required this.message});
}

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
      DioExceptionType.badResponse => HttpException(message: 'Bad Response'),
      DioExceptionType.cancel => HttpException(message: 'Request is Canceled'),
      DioExceptionType.connectionError =>
        HttpException(message: 'No Internet Connection'),
      DioExceptionType.unknown => HttpException(
          message: 'Oops, there was an error, please try again later!',
        ),
    };
  }
}
