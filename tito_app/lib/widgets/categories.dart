import 'package:flutter/material.dart';
import 'package:tito_app/models/category_model.dart';
import 'package:tito_app/widgets/widgets.dart';

class Categories extends StatefulWidget {
  final List<Category> categories;

  const Categories({Key? key, required this.categories}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  toggleCategory(Category category) {
    this.setState(() {
      bool anyActive =
          widget.categories.any((element) => element.isActive == false);

      widget.categories.forEach((element) {
        if (element.id != category.id && !anyActive) {
          element.isActive = false;
        } else {
          element.isActive = true;
        }
      });
    });
    print(category.name);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          6,
          (index) {
            return CategoryItem(
              category: widget.categories[index],
              toggle: toggleCategory,
            );
          },
        ),
      ),
    );
  }
}
