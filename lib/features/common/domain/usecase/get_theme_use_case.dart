import 'package:stylish_store/features/common/domain/entities/theme_mode_entity.dart';
import 'package:stylish_store/features/common/domain/repositories/theme_repository.dart';

class GetThemeUseCase {
  final ThemeRepository repository;

  GetThemeUseCase(this.repository);

  Future<ThemeModeEntity> call() async {
    return await repository.getTheme();
  }
}
