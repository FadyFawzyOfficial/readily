part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksFailure extends NewestBooksState {
  final String message;

  const NewestBooksFailure({required this.message});
}

final class NewestBooksSuccess extends NewestBooksState {
  final List<Book> books;

  const NewestBooksSuccess({required this.books});
}
