import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/book_entity.dart';
import '../../../domain/use_cases/fetch_featured_books_use_case.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final FetchFeaturedBooksUseCase _featuredBooksUseCase;

  FeaturedBooksCubit({required FetchFeaturedBooksUseCase featuredBooksUseCase})
      : _featuredBooksUseCase = featuredBooksUseCase,
        super(FeaturedBooksInitial());

  Future<void> get featuredBooks async {
    emit(FeaturedBooksLoading());

    final result = await _featuredBooksUseCase.call();

    result.fold(
      (error) => emit(FeaturedBooksFailure(message: error.message)),
      (books) => emit(FeaturedBooksSuccess(books: books)),
    );
  }
}
