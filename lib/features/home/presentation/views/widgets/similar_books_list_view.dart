import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, BlocProvider;

import '../../../../../core/utils/service_locator.dart';
import '../../../../../core/widgets/error_indicator.dart';
import '../../../../../core/widgets/loading_indicator.dart';
import '../../../data/repos/home_repo_impl.dart';
import '../../cubits/similar_books/similar_books_cubit.dart';
import 'books_horizontal_list_view.dart';

class SimilarBooksListView extends StatelessWidget {
  final String category;

  const SimilarBooksListView({super.key, required this.category});

  @override
  Widget build(context) {
    return BlocProvider(
      create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>())
        ..fetchSimilarBooks(category: category),
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSuccess) {
            return BooksHorizontalListView(
              books: state.books,
              openSameView: true,
            );
          } else if (state is SimilarBooksFailure) {
            return ErrorIndicator(message: state.message);
          }
          return const LoadingIndicator();
        },
      ),
    );
  }
}
