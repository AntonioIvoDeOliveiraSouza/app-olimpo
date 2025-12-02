import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:olimpo/config/favorites_storage.dart';

class FavoriteIdsNotifier extends StateNotifier<List<String>> {
  FavoriteIdsNotifier() : super([]);

  void toggle(String id) {
    final isFav = state.contains(id);
    if (isFav) {
      state = state.where((i) => i != id).toList();
    } else {
      state = [...state, id];
    }
  }

  bool isFavorite(String id) => state.contains(id);
}
class FavoriteAthletesNotifier extends FavoriteIdsNotifier {
  FavoriteAthletesNotifier() : super();

  Future<void> load() async {
    final saved = await FavoritesStorage.loadFavoriteAthleteIds();
    state = saved;
  }

  @override
  void toggle(String id) {
    super.toggle(id);
    FavoritesStorage.saveFavoriteAthleteIds(state);
  }
}

final favoriteAthletesProvider =
    StateNotifierProvider<FavoriteAthletesNotifier, List<String>>((ref) {
  final notifier = FavoriteAthletesNotifier();
  notifier.load();
  return notifier;
});

final favoriteModalitiesProvider =
    StateNotifierProvider<FavoriteIdsNotifier, List<String>>((ref) {
  return FavoriteIdsNotifier();
});
