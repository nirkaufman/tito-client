import 'package:flutter/material.dart';
import 'package:tito_app/models/category_model.dart';
import 'package:tito_app/widgets/widgets.dart';

class Categories extends StatefulWidget {
  final List<CategoryModel> categories;

  const Categories({Key? key, required this.categories}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  toggleCategory(CategoryModel category) {
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
    final size = MediaQuery.of(context).size;
    final double itemHeight = (size.height -
            kToolbarHeight -
            kBottomNavigationBarHeight -
            kTextTabBarHeight -
            50) /
        3;
    final double itemWidth = size.width / 2;
    return Center(
      child: Container(
          child: GridView.count(
        crossAxisCount: 2,
        physics: ClampingScrollPhysics(),
        childAspectRatio: (itemWidth / itemHeight),
        shrinkWrap: true,
        children: List.generate(6, (index) {
          return CategoryItem(
            category: widget.categories[index],
            toggle: toggleCategory,
          );
        }),
      )),
    );
  }
}
