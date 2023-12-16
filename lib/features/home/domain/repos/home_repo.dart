import 'package:dartz/dartz.dart' show Either;

import '../../../../core/exceptions/app_exception.dart';
import '../entities/book_entity.dart';

abstract class HomeRepo {
  Future<Either<AppException, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<AppException, List<BookEntity>>> fetchNewestBooks();
}
