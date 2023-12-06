import 'package:equatable/equatable.dart' show Equatable;
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;

import '../../../data/models/book/book.dart';
import '../../../data/repos/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final HomeRepo homeRepo;

  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    final result = await homeRepo.fetchFeaturedBooks();

    result.fold(
      (failure) => emit(FeaturedBooksFailure(message: failure.message)),
      (books) => emit(FeaturedBooksSuccess(books: books)),
    );
  }
}
