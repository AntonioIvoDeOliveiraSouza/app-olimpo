import 'package:olimpo/screens/bio_athletes_screen.dart';
import 'package:olimpo/widgets/model_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:olimpo/data/olympic_data.dart';
import 'package:olimpo/widgets/nav_bar.dart';

class AthletesScreen extends StatelessWidget {
  const AthletesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Atletas"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
        children: [
          for (final athlete in listAthlete)
            GridItem(
              item: athlete,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => BioAthletes(bioathlete: athlete)),
                );
              }
            )
        ],
      ),
      bottomNavigationBar: NavBar(parentContext: context),
    );
  }
}