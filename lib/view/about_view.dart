import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  static const String routeName = "/about";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add a Gratitude")),
      body: Container(
        color: Colors.yellow,
        child: Center(child: Text("About")),
      ),
    );
  }
}
