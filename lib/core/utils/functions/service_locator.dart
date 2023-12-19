import 'package:dio/dio.dart' show Dio;
import 'package:get_it/get_it.dart' show GetIt;

import '../../../features/home/data/data_sources/home_local_data_source.dart';
import '../../../features/home/data/data_sources/home_remote_data_source.dart';
import '../../../features/home/data/repos/home_repo_impl.dart';
import '../../services/api_service.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio: Dio()));
  getIt.registerLazySingleton<HomeRepoImpl>(
    () => HomeRepoImpl(
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        apiService: getIt.get<ApiService>(),
      ),
      homeLocalDataSource: HomeLocalDataSourceImpl(),
    ),
  );
}
