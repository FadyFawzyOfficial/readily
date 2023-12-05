part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String message;

  const FeaturedBooksFailure({required this.message});
}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<Book> books;

  const FeaturedBooksSuccess({required this.books});
}
