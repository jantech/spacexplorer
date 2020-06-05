import 'package:flutter/material.dart';
import 'package:spacexplorer/screens/appscaffold.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "Dashboard",
      body: SingleChildScrollView(child: Text("Dashboard"),),
    );
  }
}