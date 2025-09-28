import 'package:flutter/material.dart';

class Modality {
  const Modality({
    required this.id,
    required this.title,
    required this.imageUrl,
    this.color = Colors.orange});

  final String id;
  final String title;
  final String imageUrl;
  final Color color;
}