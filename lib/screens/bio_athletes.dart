import 'package:flutter/material.dart';
import 'package:olimpo/models/athlete.dart';
import 'package:olimpo/widgets/nav_bar.dart';


class BioAthletes extends StatelessWidget {
  const BioAthletes({super.key, required this.bioathlete});

  final Athlete bioathlete;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bioathlete.title),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
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