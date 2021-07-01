import 'package:flutter/material.dart';

class CategoryModel {
  final int id;
  final String imageUrl;
  final Color color;
  final String name;
  bool isActive;

  CategoryModel({
    required this.id,
    required this.color,
    required this.imageUrl,
    required this.name,
    this.isActive = true,
  });
}
