import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:olimpo/data/olympic_data.dart';
import 'package:olimpo/providers/favorites_providers.dart';
import 'package:olimpo/screens/sport_screen.dart';

class FavoriteModalitiesScreen extends ConsumerWidget {
  const FavoriteModalitiesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favIds = ref.watch(favoriteModalitiesProvider);
    final favorites = listModality.where((m) => favIds.contains(m.id)).toList();

    if (favorites.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: const Text('Modalidades Favoritas')),
        body: const Center(child: Text('Nenhuma modalidade favoritada.')),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Modalidades Favoritas')),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final modality = favorites[index];
          return ListTile(
            leading: Image.network(
              modality.imageUrl,
              width: 76,
              height: 76,
              fit: BoxFit.cover,
            ),
            title: Text(modality.title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SportScreen(sport: modality)),
              );
            },
          );
        },
      ),
    );
  }
}
