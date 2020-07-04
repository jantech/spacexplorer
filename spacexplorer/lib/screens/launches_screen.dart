import 'package:flutter/material.dart';

class LaunchesScreen extends StatelessWidget {
  static const String routeName = '/launches';
  const LaunchesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Launches"),
    );
  }
}
