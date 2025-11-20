import 'package:flutter/material.dart';
import 'package:olimpo/screens/athletes_screen.dart';
import 'package:olimpo/screens/modalities_screen.dart';

class NavBar extends StatelessWidget {
  final BuildContext parentContext;
  const NavBar({required this.parentContext, super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      //color: Colors.green[800],
      child: IconTheme(
        data: IconThemeData(color: Colors.amber),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.sports_mma),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  parentContext,
                  MaterialPageRoute(builder: (context) => const ModalitiesScreen()),
                  (route) => route.isFirst, 
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.sports_gymnastics),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  parentContext,
                  MaterialPageRoute(builder: (context) => const AthletesScreen()),
                  (route) => route.isFirst,
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}