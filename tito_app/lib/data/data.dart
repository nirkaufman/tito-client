import 'package:flutter/material.dart';
import 'package:tito_app/data/tito_colors.dart';
import 'package:tito_app/models/models.dart';

final User currentUser = User(
  name: 'Muhamad Badir',
  imageUrl:
      'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
);

final List<Category> categories = [
  Category(
      id: 1,
      imageUrl: 'assets/images/actual_buisness_work.png',
      color: TitoColors.blue,
      name: 'Actual Business Work'),
  Category(
      id: 2,
      imageUrl: 'assets/images/talking_customers.png',
      color: TitoColors.pink,
      name: 'Talking with Customers'),
  Category(
      id: 3,
      imageUrl: 'assets/images/marketing.png',
      color: TitoColors.green,
      name: 'Marketing (meetings, social)'),
  Category(
      id: 4,
      imageUrl: 'assets/images/learning.png',
      color: TitoColors.red,
      name: 'Learning/Exploration'),
  Category(
      id: 5,
      imageUrl: 'assets/images/planing.png',
      color: TitoColors.yellow,
      name: 'Planing'),
  Category(
      id: 6,
      imageUrl: 'assets/images/other_activates.png',
      color: TitoColors.purple,
      name: 'Other Activates')
];
