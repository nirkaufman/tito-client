import 'package:flutter/material.dart';
import 'package:tito_app/config/palette.dart';
import 'package:tito_app/data/data.dart';
import 'package:tito_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: Text(
            'Tito',
            style: const TextStyle(
              color: Palette.nextBlue,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
          centerTitle: false,
          floating: true,
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: Categories(
              categories: categories,
            ),
          ),
        ),
      ]),
    );
  }
}
