import 'package:flutter/material.dart';

class Athlete {
  const Athlete({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.biography,
    required this.honors,
    this.color = Colors.amber,
  });

  final String id;
  final String title;
  final String imageUrl;
  final String biography;
  final String honors;
  final Color color;
}