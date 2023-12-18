import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../domain/entities/book_entity.dart';
import '../../domain/repos/home_repo.dart';
import '../data_sources/home_local_data_source.dart';
import '../data_sources/home_remote_data_source.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSource,
  });

  @override
  Future<Either<AppException, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var books = homeLocalDataSource.fetchFeaturedBooks();
      if (books.isNotEmpty) return right(books);

      books = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(HttpException.formDio(dioException: e));
      } else {
        return left(AppException(message: '$e'));
      }
    }
  }

  @override
  Future<Either<AppException, List<BookEntity>>> fetchNewestBooks() async {
    try {
      var books = homeLocalDataSource.fetchNewestBooks();
      if (books.isNotEmpty) return right(books);

      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(HttpException.formDio(dioException: e));
      } else {
        return left(AppException(message: '$e'));
      }
    }
  }
}
