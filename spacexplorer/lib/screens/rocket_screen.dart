import 'package:flutter/material.dart';

class RocketScreen extends StatelessWidget {
  static const String routeName = '/rockets';

  const RocketScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Rocket"),
    );
  }
}
