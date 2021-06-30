import 'package:flutter/material.dart';
import 'package:tito_app/config/palette.dart';
import 'package:tito_app/models/models.dart';

class CustomTabBar extends StatelessWidget {
  final List<NavTab> tabs;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isBottomIndicator;

  const CustomTabBar(
      {Key? key,
      required this.tabs,
      required this.selectedIndex,
      required this.onTap,
      this.isBottomIndicator = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Palette.nextBlue,
      unselectedLabelColor: Colors.black45,
      labelStyle: TextStyle(fontWeight: FontWeight.bold),
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: isBottomIndicator
            ? Border(
                bottom: BorderSide(
                  color: Palette.nextBlue,
                  width: 3.0,
                ),
              )
            : Border(
                top: BorderSide(
                  color: Palette.nextBlue,
                  width: 3.0,
                ),
              ),
      ),
      tabs: tabs
          .asMap()
          .map((i, e) => MapEntry(
                i,
                Tab(
                  iconMargin: EdgeInsets.only(bottom: 4.0),
                  text: e.text,
                  icon: Icon(
                    e.icon,
                    color:
                        i == selectedIndex ? Palette.nextBlue : Colors.black45,
                    size: 30.0,
                  ),
                ),
              ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
