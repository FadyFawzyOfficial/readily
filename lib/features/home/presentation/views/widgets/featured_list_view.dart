import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/services/api_service.dart';
import '../../../data/data_sources/home_local_data_source.dart';
import '../../../data/data_sources/home_remote_data_source.dart';
import '../../../data/repos/home_repo_impl.dart';
import '../../../domain/use_cases/fetch_featured_books_use_case.dart';
import '../../cubits/featured_books/featured_books_cubit.dart';
import 'book_image.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(context) {
    return BlocProvider(
      create: (context) => FeaturedBooksCubit(
        featuredBooksUseCase: FetchFeaturedBooksUseCase(
          homeRepo: HomeRepoImpl(
              homeRemoteDataSource: HomeRemoteDataSourceImpl(
                apiService: ApiService(dio: Dio()),
              ),
              homeLocalDataSource: HomeLocalDataSourceImpl()),
        ),
      ),
      child: ListView.separated(
        padding: const EdgeInsets.all(24),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const BookImage(),
        separatorBuilder: (context, index) => const SizedBox(width: 16),
      ),
    );
  }
}
