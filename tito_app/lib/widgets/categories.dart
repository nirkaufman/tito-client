import 'package:flutter/material.dart';
import 'package:tito_app/config/palette.dart';
import 'package:tito_app/models/category_model.dart';
import 'package:tito_app/widgets/category_item.dart';

class Categories extends StatelessWidget {
  final List<Category> categories;

  const Categories({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 1.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return CategoryItem(category: categories[index]);
        },
        childCount: categories.length,
      ),
    );
  }
}
