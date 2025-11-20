import 'package:flutter/material.dart';
import 'package:olimpo/models/modality.dart';
import 'package:olimpo/widgets/nav_bar.dart';

class SportScreen extends StatelessWidget {
  const SportScreen({super.key, required this.sport});

  final Modality sport;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sport.title),
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