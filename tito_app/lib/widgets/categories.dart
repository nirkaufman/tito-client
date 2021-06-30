import 'package:flutter/material.dart';
import 'package:tito_app/models/category_model.dart';
import 'package:tito_app/widgets/widgets.dart';

class Categories extends StatelessWidget {
  final List<Category> categories;

  const Categories({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
      crossAxisCount: 2,
      children: List.generate(6, (index) {
        return CategoryItem(
          category: categories[index],
        );
      }),
    ));
  }
}
