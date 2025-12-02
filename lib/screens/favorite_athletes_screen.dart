import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:olimpo/data/olympic_data.dart';
import 'package:olimpo/providers/favorites_providers.dart';
import 'package:olimpo/screens/bio_athletes_screen.dart';

class FavoriteAthletesScreen extends ConsumerWidget {
  const FavoriteAthletesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favIds = ref.watch(favoriteAthletesProvider);
    final favorites = listAthlete.where((a) => favIds.contains(a.id)).toList();

    if (favorites.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: const Text('Atletas Favoritos')),
        body: const Center(child: Text('Nenhum atleta favoritado.')),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Atletas Favoritos')),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final athlete = favorites[index];
          return ListTile(
            leading: Image.network(
              athlete.imageUrl,
              width: 76,
              height: 76,
              fit: BoxFit.cover,
            ),
            title: Text(athlete.title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => BioAthletes(bioathlete: athlete)),
              );
            },
          );
        },
      ),
    );
  }
}
