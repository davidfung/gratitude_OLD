import 'package:flutter/material.dart';
import 'package:gratitude/app_header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_TITLE,
      theme: ThemeData(
        primarySwatch: appColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

class MasterList extends StatelessWidget {
  const MasterList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GDivider(),
        GItem(
            icon: Icon(Icons.portrait),
            title: 'April 29, 2020',
            body:
                "Put your gratitude here.Put your gratitude here.Put your gratitude here.Put your gratitude here.Put your gratitude here.\n\nPut your gratitude here.\nPut your gratitude here.\nPut your gratitude here.\nPut your gratitude here."),
        GDivider(),
        GItem(
            icon: Icon(Icons.directions_walk),
            title: 'April 29, 2020',
            body:
                "Put your gratitude here.Put your gratitude here.Put your gratitude here.Put your gratitude here.Put your gratitude here.\n\nPut your gratitude here.\nPut your gratitude here.\nPut your gratitude here.\nPut your gratitude here."),
        GDivider(),
        GItem(
            icon: Icon(Icons.directions_walk),
            title: 'April 28, 2020',
            body: "Put your gratitude here."),
        GDivider(),
        GItem(
            icon: Icon(Icons.directions_bike),
            title: 'April 27, 2020',
            body: "Put your gratitude here."),
        GDivider(),
        GItem(
            icon: Icon(Icons.people),
            title: 'April 26, 2020',
            body: "Put your gratitude here."),
        GDivider(),
        GItem(
            icon: Icon(Icons.attach_file),
            title: 'April 25, 2020',
            body: "Put your gratitude here."),
        GDivider(),
        GItem(
            icon: Icon(Icons.call),
            title: 'April 24, 2020',
            body: "Put your gratitude here."),
        GDivider(),
        GItem(
            icon: Icon(Icons.assistant_photo),
            title: 'April 23, 2020',
            body: "Put your gratitude here."),
        GDivider(),
        GItem(
            icon: Icon(Icons.add_alert),
            title: 'April 22, 2020',
            body: "Put your gratitude here."),
      ],
    );
  }
}

class GDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
          height: 1,
        ),
        //color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        color: secColor);
  }
}

class GItem extends StatelessWidget {
  final Icon icon;
  final String title;
  final String body;

  const GItem({Key key, this.icon, this.title, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
      subtitle:
          Text(body, style: TextStyle(fontSize: 14.0, color: Colors.black)),
    );
  }
}

// Container(
// width: double.infinity,
// height: double.infinity,
// color: appColor,
// child: SizedBox(),
// );
