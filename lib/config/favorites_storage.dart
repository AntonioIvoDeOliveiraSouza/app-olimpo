import 'package:shared_preferences/shared_preferences.dart';

class FavoritesStorage {
  static const _athletesKey = 'favorite_athletes';
  static Future<void> saveFavoriteAthleteIds(List<String> ids) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_athletesKey, ids);
  }

  static Future<List<String>> loadFavoriteAthleteIds() async {
    final prefs = await SharedPreferences.getInstance();
    final list = prefs.getStringList(_athletesKey);
    return list ?? [];
  }
}
