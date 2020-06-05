import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {

  final String title;
  final Widget body;

  const AppScaffold({Key key,
      @required this.title,
      @required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      color: Colors.blue,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: body,
        ),
      ),
    );
  }
}