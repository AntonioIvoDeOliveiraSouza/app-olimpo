import 'package:flutter/material.dart';
import 'package:olimpo/models/basic_model.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
    required this.item,
    required this.onTap,
  });

  final GridItemData item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: ShaderMask(
            shaderCallback: (bounds){
              return LinearGradient(
                colors: [Colors.transparent, Colors.black.withValues(alpha:0.7)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(bounds);
            },
            blendMode: BlendMode.darken,
            child: Image.network(
              item.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            splashColor: Theme.of(context).primaryColor.withValues(alpha: 0.6),
            highlightColor: Theme.of(context).primaryColor.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(16),
            child: Container(
              padding: const EdgeInsets.all(12),
              child: Center(
                child: Text(
                  item.title,
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
