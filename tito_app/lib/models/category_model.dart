import 'package:flutter/material.dart';

class Category {
  final int id;
  final String imageUrl;
  final Color color;
  final String name;

  const Category({
    required this.id,
    required this.color,
    required this.imageUrl,
    required this.name,
  });
}
