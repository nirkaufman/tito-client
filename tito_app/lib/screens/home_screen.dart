import 'package:flutter/material.dart';
import 'package:tito_app/data/data.dart';
import 'package:tito_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Time Track',
          style: const TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            letterSpacing: -1.2,
          ),
        ),
        centerTitle: false,
      ),
      body: Categories(categories: categories),
    );
  }
}
