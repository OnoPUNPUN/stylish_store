import 'package:shared_preferences/shared_preferences.dart';
import 'package:stylish_store/app/features/common/data/datasources/theme_local_datasource.dart';

class ThemeLocalDatasourceImpl implements ThemeLocalDataSource {
  final SharedPreferences sharedPreferences;
  static const String _themeModeKey = 'themeMode';

  ThemeLocalDatasourceImpl(this.sharedPreferences);

  @override
  Future<void> cacheTheme(String theme) async {
    await sharedPreferences.setString(_themeModeKey, theme);
  }

  @override
  Future<String?> getCachedTheme() async {
    return sharedPreferences.getString(_themeModeKey);
  }
}
