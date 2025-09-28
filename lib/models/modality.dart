import 'package:flutter/material.dart';

class Modality {
  const Modality({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.history,
    required this.rules,
    this.color = Colors.orange});

  final String id;
  final String title;
  final String imageUrl;
  final String history;
  final String rules;
  final Color color;
}