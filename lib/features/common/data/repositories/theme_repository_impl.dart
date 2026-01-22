import 'package:stylish_store/features/common/data/datasources/theme_local_datasource.dart';
import 'package:stylish_store/features/common/domain/entities/theme_mode_entity.dart';
import 'package:stylish_store/features/common/domain/repositories/theme_repository.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeLocalDataSource localDataSource;

  ThemeRepositoryImpl(this.localDataSource);

  @override
  Future<ThemeModeEntity> getTheme() async {
    final cachedTheme = await localDataSource.getCachedTheme();

    if (cachedTheme != null) {
      return ThemeModeEntity.fromString(cachedTheme);
    }

    return ThemeModeEntity.system;
  }

  @override
  Future<void> saveTheme(ThemeModeEntity theme) async {
    await localDataSource.cacheTheme(theme.toValue());
  }
}
