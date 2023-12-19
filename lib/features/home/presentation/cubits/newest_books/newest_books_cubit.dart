import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/book_entity.dart';
import '../../../domain/use_cases/fetch_newest_books_use_case.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  final FetchNewestBooksUseCase _fetchNewestBooksUseCase;
  NewestBooksCubit({required FetchNewestBooksUseCase fetchNewestBooksUseCase})
      : _fetchNewestBooksUseCase = fetchNewestBooksUseCase,
        super(NewestBooksInitial());

  Future<void> get newestBooks async {
    emit(NewestBooksLoading());

    final result = await _fetchNewestBooksUseCase.call();

    result.fold(
      (error) => emit(NewestBooksFailure(message: error.message)),
      (books) => emit(NewestBooksSuccess(books: books)),
    );
  }
}
