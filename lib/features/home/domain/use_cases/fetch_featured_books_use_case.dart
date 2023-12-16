import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/use_cases/use_case.dart';
import '../entities/book_entity.dart';
import '../repos/home_repo.dart';

class FetchFeaturedBooksUseCase implements UseCase<List<BookEntity>, void> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase({required this.homeRepo});

  @override
  Future<Either<AppException, List<BookEntity>>> call([void noParam]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
