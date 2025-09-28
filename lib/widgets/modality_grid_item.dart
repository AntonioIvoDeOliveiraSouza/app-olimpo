import 'package:flutter/material.dart';
import 'package:olimpo/models/modality.dart';
import 'package:olimpo/screens/sport.dart';

class ModalityGridItem extends StatelessWidget {
  const ModalityGridItem({
    super.key,
    required this.modality,
  });

  final Modality modality;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: NetworkImage(modality.imageUrl),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withValues(alpha: 0.3),
                BlendMode.darken,
              ),
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return SportScreen(
                    sport: modality,
                  );
                }),
              );
            },
            splashColor: Theme.of(context).primaryColor.withValues(alpha: 0.6),
            highlightColor: Theme.of(context).primaryColor.withValues(alpha:0.3 ),
            borderRadius: BorderRadius.circular(16),
            child: Container(
              padding: const EdgeInsets.all(12),
              child: Center(
                child: Text(
                  modality.title,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 4.0,
                        color: Colors.black.withValues(alpha: 0.5),
                        offset: const Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}