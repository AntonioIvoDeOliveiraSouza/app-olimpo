import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:olimpo/models/modality.dart';
import 'package:olimpo/providers/favorites_providers.dart';
import 'package:olimpo/widgets/nav_bar.dart';

class SportScreen extends ConsumerWidget {
  const SportScreen({super.key, required this.sport});

  final Modality sport;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favIds = ref.watch(favoriteModalitiesProvider);
    final isFav = favIds.contains(sport.id);

    return Scaffold(
      appBar: AppBar(
        title: Text(sport.title),
        actions: [
          IconButton(
            onPressed: () {
              final wasFav = isFav;
              ref.read(favoriteModalitiesProvider.notifier).toggle(sport.id);

              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(wasFav ? 'Removido dos favoritos' : 'Adicionado aos favoritos'),
                  action: SnackBarAction(
                    label: 'Desfazer',
                    onPressed: () {
                      ref.read(favoriteModalitiesProvider.notifier).toggle(sport.id);
                    },
                  ),
                ),
              );
            },
            icon: Icon(isFav ? Icons.star : Icons.star_border),
            color: isFav ? Colors.yellow : null,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              sport.imageUrl,
              height: 180, 
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            
            const SizedBox(height: 14),
            Text(
              'História',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                sport.history,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              'Regras',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                sport.rules,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(parentContext: context),
    );
  }
}