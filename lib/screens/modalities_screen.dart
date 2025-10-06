import 'package:olimpo/widgets/model_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:olimpo/data/olympic_data.dart';
import 'package:olimpo/widgets/nav_bar.dart';
import 'package:olimpo/screens/sport_screen.dart';

class ModalitiesScreen extends StatelessWidget{
  const ModalitiesScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modalidades'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.green[800],
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4/2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          for (final modality in listModality)
            GridItem(
              item: modality,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => SportScreen(sport: modality)),
                );
              }
            )
        ],),
      bottomNavigationBar: NavBar(parentContext: context),
    );
  }
}