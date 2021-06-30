import 'package:flutter/material.dart';
import 'package:tito_app/models/models.dart';

final User currentUser = User(
  name: 'Muhamad Badir',
  imageUrl:
      'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
);

final List<Category> categories = [
  Category(
      id: 1,
      imageUrl: 'assets/images/CustomPolicy-bw.png',
      color: Color.fromRGBO(0, 215, 255, 1),
      name: 'Work',
    isActive: true
  ),
  Category(
      id: 2,
      imageUrl: 'assets/images/AppleTree-bw.png',
      color: Color.fromRGBO(255, 50, 160, 1),
      name: 'Free time',
      isActive: true
  ),
  Category(
      id: 3,
      imageUrl: 'assets/images/LOB_ToolsEquipment-bw.png',
      color: Color.fromRGBO(0, 230, 80, 1),
      name: 'Family',
      isActive: true
  ),
  Category(
      id: 4,
      imageUrl: 'assets/images/Retail-bw.png',
      color: Color.fromRGBO(255, 65, 0, 1),
      name: 'Marketing',
      isActive: true
  ),
  Category(
      id: 5,
      imageUrl: 'assets/images/Questions_SignUp.png',
      color: Color.fromRGBO(220, 240, 0, 1),
      name: 'Driving',
      isActive: true
  ),
  Category(
      id: 6,
      imageUrl: 'assets/images/TalkToAgent-bw.png',
      color: Color.fromRGBO(172, 0, 231, 1),
      name: 'Living',
      isActive: true
  )
];
