enum ThemeModeEntity {
  light,
  dark,
  system;

  static ThemeModeEntity fromString(String value) {
    switch (value) {
      case 'light':
        return ThemeModeEntity.light;
      case 'dark':
        return ThemeModeEntity.dark;
      case 'system':
        return ThemeModeEntity.system;
      default:
        return ThemeModeEntity.system;
    }
  }

  String toValue() {
    switch (this) {
      case ThemeModeEntity.light:
        return 'light';
      case ThemeModeEntity.dark:
        return 'dark';
      case ThemeModeEntity.system:
        return 'system';
    }
  }
}
