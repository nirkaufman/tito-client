import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
        actions: [
          IconButton(
              icon: Icon(MdiIcons.accountCircle),
              iconSize: 35,
              color: Colors.white,
              onPressed: () => print('Go to profile')),
        ],
      ),
      body: Categories(categories: categories),
    );
  }
}
