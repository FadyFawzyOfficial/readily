import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/service_locator.dart';
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
      child: const BooksSliverList(),
    );
  }
}
