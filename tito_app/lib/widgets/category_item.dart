import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:tito_app/config/palette.dart';
import 'package:tito_app/models/models.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        onFlip: () => print('on flip'),
        onFlipDone: (isDone) => print('is done: ${isDone} '),
        front: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: category.color,
              ),
            ),
            Column(
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
          ],
        ),
        back: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: category.color,
                  borderRadius: BorderRadius.circular(12.0)),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 27.0,
                            backgroundColor: Colors.grey[200],
                            backgroundImage: AssetImage(category.imageUrl),
                          ),
                        ),
                        Text(
                          category.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Started at: 08:55 AM',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      '09:55:33',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // child: FlatButton(
      //   onPressed: () => print('Create Room'),
      //   shape:
      //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      //   color: category.color,
      //   textColor: Palette.nextBlue,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Container(
      //           height: 150,
      //           child: Image.asset(category.imageUrl, fit: BoxFit.fill)),
      //       Padding(
      //         padding: const EdgeInsets.all(2.0),
      //         child: Text(
      //           category.name,
      //           style: TextStyle(
      //               fontSize: 18,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.black),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
