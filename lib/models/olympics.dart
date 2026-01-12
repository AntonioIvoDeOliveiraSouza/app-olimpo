import 'package:flutter/material.dart';
import 'package:olimpo/models/basic_model.dart';

class Modality implements GridItemData{
  const Modality({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.history,
    required this.rules,
    this.color = Colors.blue});

  @override
  final String id;
  @override
  final String title;
  @override
  final String imageUrl;
  final String history;
  final String rules;
  @override
  final Color color;
}

factory Olympics.fromMap(Map<String, dynamic> map, String documentId) {
  return Olympics(
    id: documentId,
    title: map['title'] ?? 'Sem Título',
    imageUrl: map['imageUrl'] ?? '',    
  );
}