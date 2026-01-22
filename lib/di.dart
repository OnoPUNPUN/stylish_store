import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stylish_store/features/common/data/datasources/theme_local_datasource.dart';
import 'package:stylish_store/features/common/data/datasources/theme_local_datasource_impl.dart';
import 'package:stylish_store/features/common/data/repositories/theme_repository_impl.dart';
import 'package:stylish_store/features/common/domain/repositories/theme_repository.dart';
import 'package:stylish_store/features/common/domain/usecase/get_theme_use_case.dart';
import 'package:stylish_store/features/common/domain/usecase/save_theme_use_case.dart';
import 'package:stylish_store/features/common/presentation/states/theme_cubit.dart';

final GetIt getIt = GetIt.instance;

Future<void> initDependencies() async {}

Future<void> _setupSharedPreferences() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}

Future<void> _setupTheme() async {
  getIt.registerLazySingleton<ThemeLocalDataSource>(
    () => ThemeLocalDatasourceImpl(getIt()),
  );

  getIt.registerLazySingleton<ThemeRepository>(
    () => ThemeRepositoryImpl(getIt()),
  );

  getIt.registerLazySingleton(() => GetThemeUseCase(getIt()));
  getIt.registerLazySingleton(() => SaveThemeUseCase(getIt()));

  getIt.registerFactory(
    () => ThemeCubit(getThemeUseCase: getIt(), saveThemeUseCase: getIt()),
  );
}
