import 'package:dio/dio.dart' show DioException, DioExceptionType;

abstract class Failure {
  final String message;

  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: 'Connection timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: 'Send timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: 'Receive timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure(message: 'Bad certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromDioResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(message: 'Request is canceled');
      case DioExceptionType.connectionError:
        return ServerFailure(message: 'No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure(message: 'Unexpected error, please try again');
    }
  }

  factory ServerFailure.fromDioResponse(int statusCode, dynamic response) {
    if (statusCode >= 400 && statusCode < 404) {
      return ServerFailure(message: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
        message: 'Your request not found, please try again later!',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        message: 'Internal server error, please try again later!',
      );
    } else {
      return ServerFailure(
        message: 'Oops there was an error, please try again!',
      );
    }
  }
}
