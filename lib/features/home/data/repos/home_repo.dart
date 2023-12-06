import 'package:dartz/dartz.dart' show Either;

import '../../../../core/models/failure.dart';
import '../models/book/book.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks();
  Future<Either<Failure, List<Book>>> fetchNewestBooks();
  Future<Either<Failure, List<Book>>> fetchSimilarBooks(
      {required String category});
}
