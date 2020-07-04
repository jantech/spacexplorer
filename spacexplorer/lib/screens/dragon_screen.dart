import 'package:flutter/material.dart';

class DragonScreen extends StatelessWidget {
  static const String routeName = '/dragons';

  const DragonScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Dragons"),
    );
  }
}
