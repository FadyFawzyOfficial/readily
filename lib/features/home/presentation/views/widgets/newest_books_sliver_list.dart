import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider, BlocBuilder;

import '../../../../../core/utils/service_locator.dart';
import '../../../../../core/widgets/sliver_error_indicator.dart';
import '../../../../../core/widgets/sliver_loading_indicator.dart';
import '../../../data/repos/home_repo_impl.dart';
import '../../cubits/newest_books/newest_books_cubit.dart';
import 'books_sliver_list.dart';

class NewestBooksSliverList extends StatelessWidget {
  const NewestBooksSliverList({super.key});

  @override
  Widget build(context) {
    return BlocProvider(
      create: (context) =>
          NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
      child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
          if (state is NewestBooksSuccess) {
            return BooksSliverList(books: state.books);
          } else if (state is NewestBooksFailure) {
            return SliverErrorIndicator(message: state.message);
          }
          return const SliverLoadingIndicator();
        },
      ),
    );
  }
}
