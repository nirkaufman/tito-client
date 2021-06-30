import 'package:flutter/material.dart';
import 'package:tito_app/config/palette.dart';
import 'package:tito_app/models/models.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(18.0),
        child: FlatButton(
          onPressed: () => print('Create Room'),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          color: Colors.white,
          textColor: Palette.nextBlue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShaderMask(
                  shaderCallback: (rect) =>
                      Palette.createRoomGradient.createShader(rect),
                  child: Icon(
                    category.icon,
                    size: 50.0,
                    color: Colors.white,
                  )),
              const SizedBox(
                width: 4.0,
              ),
              Text(
                category.name,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
