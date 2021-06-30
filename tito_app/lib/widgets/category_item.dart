import 'package:flutter/material.dart';
import 'package:tito_app/config/palette.dart';
import 'package:tito_app/models/models.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  final Function toggle;

  const CategoryItem({Key? key, required this.category, required this.toggle }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: this.category.isActive ? 1 : 0.3,
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FlatButton(
            onPressed: this.category.isActive ? () => this.toggle(category) : () => {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            color: category.color,
            textColor: Palette.nextBlue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 150,
                    child: Image.asset(category.imageUrl, fit: BoxFit.fill)),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    category.name,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
