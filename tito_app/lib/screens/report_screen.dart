import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart';
import 'package:tito_app/data/data.dart';
import 'package:tito_app/models/category_model.dart';

class ReportScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ReportScreenState();
}

class ReportScreenState extends State {
  int touchedIndex = 0;
  CategoryModel selectedCategory = categories[0];

  setSelectedCategory(pieTouchResponse) {
    print(pieTouchResponse.touchedSection!.touchedSectionIndex);
    setState(() {
      this.selectedCategory =
          categories[pieTouchResponse.touchedSection!.touchedSectionIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: AspectRatio(
                aspectRatio: 1.3,
                child: Card(
                  elevation: 0,
                  color: Colors.white,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: PieChart(
                      PieChartData(
                          pieTouchData:
                              PieTouchData(touchCallback: (pieTouchResponse) {
                            setSelectedCategory(pieTouchResponse);
                            setState(() {
                              final desiredTouch = pieTouchResponse.touchInput
                                      is! PointerExitEvent &&
                                  pieTouchResponse.touchInput
                                      is! PointerUpEvent;
                              if (desiredTouch &&
                                  pieTouchResponse.touchedSection != null) {
                                touchedIndex = pieTouchResponse
                                    .touchedSection!.touchedSectionIndex;
                              } else {
                                touchedIndex = -1;
                              }
                            });
                          }),
                          borderData: FlBorderData(
                            show: false,
                          ),
                          sectionsSpace: 2,
                          centerSpaceRadius: 40,
                          sections: showingSections()),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'You spend 40% of your time on ${selectedCategory.name}',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage(
                          selectedCategory.imageUrl,
                        ),
                      )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(6, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 20.0 : 16.0;
      final radius = isTouched ? 110.0 : 100.0;
      final widgetSize = isTouched ? 55.0 : 40.0;

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: categories[0].color,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
            badgeWidget: _Badge(
              categories[0].imageUrl,
              size: widgetSize,
              borderColor: categories[0].color,
            ),
            badgePositionPercentageOffset: .98,
          );
        case 1:
          return PieChartSectionData(
            color: categories[1].color,
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
            badgeWidget: _Badge(
              categories[0].imageUrl,
              size: widgetSize,
              borderColor: categories[0].color,
            ),
            badgePositionPercentageOffset: .98,
          );
        case 2:
          return PieChartSectionData(
            color: categories[2].color,
            value: 16,
            title: '16%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
            badgeWidget: _Badge(
              categories[2].imageUrl,
              size: widgetSize,
              borderColor: categories[2].color,
            ),
            badgePositionPercentageOffset: .98,
          );
        case 3:
          return PieChartSectionData(
            color: categories[3].color,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
            badgeWidget: _Badge(
              categories[3].imageUrl,
              size: widgetSize,
              borderColor: categories[3].color,
            ),
            badgePositionPercentageOffset: .98,
          );
        case 4:
          return PieChartSectionData(
            color: categories[4].color,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
            badgeWidget: _Badge(
              categories[4].imageUrl,
              size: widgetSize,
              borderColor: categories[4].color,
            ),
            badgePositionPercentageOffset: .98,
          );
        case 5:
          return PieChartSectionData(
            color: categories[5].color,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
            badgeWidget: _Badge(
              categories[5].imageUrl,
              size: widgetSize,
              borderColor: categories[5].color,
            ),
            badgePositionPercentageOffset: .98,
          );
        case 6:
          return PieChartSectionData(
            color: categories[6].color,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
            badgeWidget: _Badge(
              categories[6].imageUrl,
              size: widgetSize,
              borderColor: categories[6].color,
            ),
            badgePositionPercentageOffset: .98,
          );

        default:
          throw 'Oh no';
      }
    });
  }
}

class _Badge extends StatelessWidget {
  final String imagePath;
  final double size;
  final Color borderColor;

  const _Badge(
    this.imagePath, {
    Key? key,
    required this.size,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            offset: const Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      ),
      padding: EdgeInsets.all(size * .15),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            imagePath,
          ))),
        ),
      ),
    );
  }
}
