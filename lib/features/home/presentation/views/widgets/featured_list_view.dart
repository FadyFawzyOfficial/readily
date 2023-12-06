import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, BlocProvider;

import '../../../../../core/utils/service_locator.dart';
import '../../../../../core/widgets/error_indicator.dart';
import '../../../../../core/widgets/loading_indicator.dart';
import '../../../data/repos/home_repo_impl.dart';
import '../../cubits/featured_books/featured_books_cubit.dart';
import 'book_image.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(context) {
    return BlocProvider(
      create: (context) =>
          FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks(),
      child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
          if (state is FeaturedBooksSuccess) {
            return ListView.separated(
              padding: const EdgeInsets.all(24),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => BookImage(
                imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail,
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 16),
            );
          } else if (state is FeaturedBooksFailure) {
            return ErrorIndicator(message: state.message);
          }
          return const LoadingIndicator();
        },
      ),
    );
  }
}
