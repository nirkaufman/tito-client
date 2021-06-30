import 'package:flutter/material.dart';
import 'package:tito_app/models/models.dart';

final User currentUser = User(
  name: 'Muhamad Badir',
  imageUrl:
      'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
);

final List<Category> categories = [
  Category(id: 1, icon: Icons.work, name: 'Work'),
  Category(id: 2, icon: Icons.time_to_leave, name: 'Free time'),
  Category(id: 3, icon: Icons.family_restroom, name: 'Family'),
  Category(id: 4, icon: Icons.shop, name: 'Marketing'),
  Category(id: 5, icon: Icons.drive_eta, name: 'Driving'),
  Category(id: 6, icon: Icons.living, name: 'Living')
];
