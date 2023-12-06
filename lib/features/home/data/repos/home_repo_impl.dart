import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' show DioException;

import '../../../../core/models/failure.dart';
import '../../../../core/utils/api_service.dart';
import '../models/book/book.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
    try {
      final data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming',
      );

      final books =
          List<Book>.from(data['items'].map((book) => Book.fromMap(book)));

      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(message: '$e'));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async {
    try {
      final data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:Java',
      );

      final books =
          List<Book>.from(data['items'].map((book) => Book.fromMap(book)));

      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(message: '$e'));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchSimilarBooks({
    required String category,
  }) async {
    try {
      final data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:$category',
      );

      final books =
          List<Book>.from(data['items'].map((book) => Book.fromMap(book)));

      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(message: '$e'));
    }
  }
}
