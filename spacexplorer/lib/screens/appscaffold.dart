import 'package:flutter/material.dart';
import 'package:spacexplorer/screens/company_screen.dart';
import 'package:spacexplorer/screens/dragon_screen.dart';
import 'package:spacexplorer/screens/rocket_screen.dart';
import 'package:spacexplorer/screens/starlink_screen.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      color: Colors.blue,
      child: SafeArea(
        top: false,
        bottom: false,
        child: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFF3F5AA6),
              title: Text("SpaceXplorer"),
            ),
            bottomNavigationBar: BottomTabAppMenu(),
            body: TabBarView(
              children: [
                CompanyScreen(),
                RocketScreen(),
                RocketScreen(),
                DragonScreen(),
                StarlinkScreen()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomTabAppMenu extends StatelessWidget {
  const BottomTabAppMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF3F5AA6),
      child: TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
        tabs: [
          Tab(
            icon: Icon(Icons.account_circle),
            text: 'Company',
          ),
          Tab(
            icon: Icon(Icons.arrow_upward),
            text: 'Rockets',
          ),
          Tab(
            icon: Icon(Icons.drag_handle),
            text: 'Dragons',
          ),
          Tab(
            icon: Icon(Icons.desktop_mac),
            text: 'Launches',
          ),
          Tab(
            icon: Icon(Icons.desktop_mac),
            text: 'Starlink',
          ),
        ],
      ),
    );
  }
}
