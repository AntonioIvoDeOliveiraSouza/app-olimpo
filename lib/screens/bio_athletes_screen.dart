import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:olimpo/models/athlete.dart';
import 'package:olimpo/providers/favorites_providers.dart';
import 'package:olimpo/widgets/nav_bar.dart';


class BioAthletes extends ConsumerWidget {
  const BioAthletes({super.key, required this.bioathlete});

  final Athlete bioathlete;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favIds = ref.watch(favoriteAthletesProvider);
    final isFav = favIds.contains(bioathlete.id);

    return Scaffold(
      appBar: AppBar(
        title: Text(bioathlete.title),
        actions: [
          IconButton(
            onPressed: () {
              final wasFav = isFav;
              ref.read(favoriteAthletesProvider.notifier).toggle(bioathlete.id);

              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(wasFav ? 'Removido dos favoritos' : 'Adicionado aos favoritos'),
                  action: SnackBarAction(
                    label: 'Desfazer',
                    onPressed: () {
                      ref.read(favoriteAthletesProvider.notifier).toggle(bioathlete.id);
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
              bioathlete.imageUrl,
              height: 180, 
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            
            const SizedBox(height: 14),
            Text(
              'Biografia',
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
                bioathlete.biography,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              'Premiações',
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
                bioathlete.honors,
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