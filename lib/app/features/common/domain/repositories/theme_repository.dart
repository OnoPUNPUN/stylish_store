import 'package:stylish_store/app/features/common/domain/entities/theme_mode_entity.dart';

abstract class ThemeRepository {
  Future<ThemeModeEntity> getTheme();

  Future<void> saveTheme(ThemeModeEntity theme);
}
