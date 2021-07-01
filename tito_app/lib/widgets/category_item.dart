import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:tito_app/config/palette.dart';
import 'package:tito_app/models/models.dart';
import 'package:tito_app/widgets/start_watch.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  final Function toggle;

  const CategoryItem({Key? key, required this.category, required this.toggle})
      : super(key: key);

  void onCategoryInactive() {}

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: this.category.isActive ? 1 : 0.3,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FlipCard(
          direction: FlipDirection.HORIZONTAL,
          onFlip: this.category.isActive ? () => this.toggle(category) : null,
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
                      StartWatch(),
                    ],
                  ),
                ),
              ),
              // Container(
              //   height: double.infinity,
              //   decoration: BoxDecoration(
              //       gradient: Palette.storyGradient,
              //       borderRadius: BorderRadius.circular(12.0)),
              // ),
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
      ),
    );
  }
}
