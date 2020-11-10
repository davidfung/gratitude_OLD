import 'package:flutter/material.dart';
import 'package:gratitude/app_header.dart';
import 'package:gratitude/provider/app_database.dart';
import 'package:gratitude/util/app_settings.dart';
import 'package:gratitude/widget/master_list.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSettings();
  await initDatabase();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_TITLE,
      theme: ThemeData(
        primarySwatch: appColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          APP_TITLE,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: MasterList(),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        tooltip: 'Add Gratitude',
        child: const Icon(Icons.add),
      ),
    );
  }

  void _addItem() {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
              title: new Text("Gratitude"),
              content: new Text("In the future, you can add a gratitude here!"),
              actions: <Widget>[
                FlatButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ));
  }
}
