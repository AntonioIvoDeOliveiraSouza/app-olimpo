import 'package:flutter/material.dart';

class WatermarkBackground extends StatelessWidget {
  final Widget child;

  const WatermarkBackground({super.key,required this.child,});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Positioned(
          bottom: -10,
          left: 0,
          right: 0,
          child: Opacity(
            opacity: 0.1,
              child: Image.asset(
                'lib/data/images/logo.png',
                width: screenWidth * 0.6,
                fit: BoxFit.contain,
              ),
            ),
          ),
        child,
      ],
    );
  }
}