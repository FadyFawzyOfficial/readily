import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/functions/service_locator.dart';
import '../../../data/repos/home_repo_impl.dart';
import '../../../domain/use_cases/fetch_newest_books_use_case.dart';
import '../../cubits/newest_books/newest_books_cubit.dart';
import 'seller_list_tile.dart';

class BooksSliverList extends StatelessWidget {
  const BooksSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(24),
      sliver: BlocProvider(
        create: (context) => NewestBooksCubit(
          fetchNewestBooksUseCase: FetchNewestBooksUseCase(
            homeRepo: getIt.get<HomeRepoImpl>(),
          ),
        ),
        child: SliverList.separated(
          // padding: const EdgeInsets.all(24),
          itemCount: 10,
          itemBuilder: (context, index) => const SellerListTile(),
          separatorBuilder: (context, index) => const SizedBox(height: 16),
        ),
      ),
    );
  }
}
