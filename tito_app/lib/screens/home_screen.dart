import 'package:flutter/material.dart';
import 'package:tito_app/data/data.dart';
import 'package:tito_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 215, 255, 1),
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Categories(
          categories: categories,
        ),
      ),
    );
  }
}
