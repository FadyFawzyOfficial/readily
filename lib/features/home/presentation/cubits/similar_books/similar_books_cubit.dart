import 'package:equatable/equatable.dart' show Equatable;
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;

import '../../../data/models/book/book.dart';
import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  final HomeRepo homeRepo;

  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());

    final result = await homeRepo.fetchSimilarBooks(category: category);

    result.fold(
      (failure) => emit(SimilarBooksFailure(message: failure.message)),
      (books) => emit(SimilarBooksSuccess(books: books)),
    );
  }
}
