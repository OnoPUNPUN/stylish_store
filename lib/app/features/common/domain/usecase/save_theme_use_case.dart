import 'package:stylish_store/app/features/common/domain/entities/theme_mode_entity.dart';
import 'package:stylish_store/app/features/common/domain/repositories/theme_repository.dart';

class SaveThemeUseCase {
  final ThemeRepository repository;

  SaveThemeUseCase(this.repository);

  Future<void> call(ThemeModeEntity theme) async {
    await repository.saveTheme(theme);
  }
}
