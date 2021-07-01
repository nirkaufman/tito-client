import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tito_app/models/models.dart';
import 'package:tito_app/screens/business_profile.dart';
import 'package:tito_app/screens/report_screen.dart';
import 'package:tito_app/screens/screens.dart';
import 'package:tito_app/widgets/widgets.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen>
    with SingleTickerProviderStateMixin {
  final List<Widget> _screens = [HomeScreen(), ReportScreen()];
  final List<NavTab> _tabs = [
    NavTab(index: 0, icon: MdiIcons.home, text: 'Home', title: 'TapInTapOut'),
    NavTab(
        index: 1,
        icon: Icons.pie_chart,
        text: 'Report',
        title: 'How did I spend my time?')
  ];
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    // Create TabController for getting the index of current tab
    _tabController = TabController(length: _tabs.length, vsync: this);

    _tabController.animation!
      ..addListener(() {
        setState(() {
          _selectedIndex = (_tabController.animation!.value).round();
        });
      });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void goToBusinessProfile() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BusinessProfile()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
          appBar: AppBar(
            elevation: 2,
            title: Text(
              _tabs[_selectedIndex].title,
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            actions: [
              IconButton(
                  icon: Icon(MdiIcons.accountCircle),
                  iconSize: 35,
                  color: Colors.white,
                  onPressed: goToBusinessProfile),
            ],
          ),
          body: TabBarView(
            children: _screens,
            controller: _tabController,
          ),
          bottomNavigationBar: Container(
            padding: const EdgeInsets.only(bottom: 12.0),
            color: Colors.white,
            child: CustomTabBar(
              controller: _tabController,
              tabs: _tabs,
              selectedIndex: _selectedIndex,
              onTap: (index) => setState(() => _selectedIndex = index),
            ),
          )),
    );
  }
}
