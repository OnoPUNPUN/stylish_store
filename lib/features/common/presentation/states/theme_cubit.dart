import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_store/features/common/domain/entities/theme_mode_entity.dart';
import 'package:stylish_store/features/common/domain/usecase/get_theme_use_case.dart';
import 'package:stylish_store/features/common/domain/usecase/save_theme_use_case.dart';

class ThemeCubit extends Cubit<ThemeModeEntity> {
  final GetThemeUseCase getThemeUseCase;
  final SaveThemeUseCase saveThemeUseCase;

  ThemeCubit({required this.getThemeUseCase, required this.saveThemeUseCase})
    : super(ThemeModeEntity.system);

  Future<void> loadTheme() async {
    try {
      final theme = await getThemeUseCase();
      emit(theme);
    } catch (e) {
      emit(ThemeModeEntity.system);
    }
  }

  Future<void> changeTheme(ThemeModeEntity mode) async {
    try {
      await saveThemeUseCase(mode);
      emit(mode);
    } catch (e, stack) {
      debugPrintStack(label: e.toString(), stackTrace: stack);
    }
  }

  ThemeMode get flutterThemeMode {
    switch (state) {
      case ThemeModeEntity.light:
        return ThemeMode.light;
      case ThemeModeEntity.dark:
        return ThemeMode.dark;
      case ThemeModeEntity.system:
        return ThemeMode.system;
    }
  }
}
