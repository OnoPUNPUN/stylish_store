abstract class ThemeLocalDataSource {
  Future<String?> getCachedTheme();

  Future<void> cacheTheme(String theme);
}
