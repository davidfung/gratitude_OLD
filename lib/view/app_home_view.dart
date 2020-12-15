import 'package:flutter/material.dart';
import 'package:gratitude/app_header.dart';
import 'package:gratitude/widget/app_drawer.dart';
import 'package:gratitude/widget/gratitude_widget.dart';

class HomeView extends StatelessWidget {
  static const String title = APP_TITLE;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: MainDrawer(),
      body: GratitudeListWidget(),
      floatingActionButton: FloatingActionButton(
        // onPressed: () {},
        onPressed: () {
          Navigator.pushNamed(context, ROUTE_GRATITUDE_ADD);
        },
        tooltip: 'Add Gratitude',
        child: const Icon(Icons.add),
      ),
    );
  }
}
