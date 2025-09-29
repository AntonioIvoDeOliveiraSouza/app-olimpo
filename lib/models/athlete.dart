import 'package:flutter/material.dart';
import 'package:olimpo/models/basic_model.dart';

class Athlete implements GridItemData{
  const Athlete({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.biography,
    required this.honors,
    this.color = Colors.amber,
  });

  @override
  final String id;
  @override
  final String title;
  @override
  final String imageUrl;
  final String biography;
  final String honors;
  @override
  final Color color;
}