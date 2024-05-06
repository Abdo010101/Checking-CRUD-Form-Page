import 'package:flutter_application_1/cores/utils/dio_manager/dio_manager.dart';
import 'package:flutter_application_1/features/user_feature/data/data_sourcee/remote/repo.dart';
import 'package:flutter_application_1/features/user_feature/domain/repo_imp.dart';
import 'package:flutter_application_1/features/user_feature/perseention/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton(() => DioHelper());
  _setupRepositories();
  setupBlocs();
}

void setupBlocs() {
  getIt.registerFactory<HomeCubit>(() => HomeCubit());
}

void _setupRepositories() {
  getIt.registerSingleton<HomeRepo>(HomeRepoImp(getIt.get<DioHelper>()));
}
