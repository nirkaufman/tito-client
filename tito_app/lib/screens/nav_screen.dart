import 'package:flutter/material.dart';
import 'package:tito_app/models/models.dart';
import 'package:tito_app/screens/report_screen.dart';
import 'package:tito_app/screens/screens.dart';
import 'package:tito_app/widgets/widgets.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [HomeScreen(), ReportScreen()];
  final List<NavTab> _tabs = [
    NavTab(index: 0, icon: Icons.home, text: 'Home'),
    NavTab(index: 1, icon: Icons.analytics, text: 'Report')
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
          body: TabBarView(
            children: _screens,
          ),
          bottomNavigationBar: Container(
            padding: const EdgeInsets.only(bottom: 12.0),
            color: Colors.white,
            child: CustomTabBar(
              tabs: _tabs,
              selectedIndex: _selectedIndex,
              onTap: (index) => setState(() => _selectedIndex = index),
            ),
          )),
    );
  }
}
