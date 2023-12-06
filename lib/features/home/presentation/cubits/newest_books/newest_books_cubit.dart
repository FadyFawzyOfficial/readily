import 'package:equatable/equatable.dart' show Equatable;
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;

import '../../../data/models/book/book.dart';
import '../../../data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  final HomeRepo homeRepo;

  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());

    final result = await homeRepo.fetchNewestBooks();

    result.fold(
      (failure) => emit(NewestBooksFailure(message: failure.message)),
      (books) => emit(NewestBooksSuccess(books: books)),
    );
  }
}
