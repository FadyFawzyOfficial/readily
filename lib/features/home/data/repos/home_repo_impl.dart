import 'package:dartz/dartz.dart';

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
        endPoint:
            'volumes?Filtering=free-ebooks&q=subject:Programming&sorting=newest',
      );

      final books =
          List<Book>.from(data['items'].map((book) => Book.fromMap(book)));

      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
