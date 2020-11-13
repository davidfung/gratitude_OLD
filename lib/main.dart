import 'package:flutter/material.dart';
import 'package:gratitude/app_header.dart';
import 'package:gratitude/provider/app_database.dart';
import 'package:gratitude/util/app_settings.dart';
import 'package:gratitude/view/about_view.dart';
import 'package:gratitude/view/item_add_view.dart';
import 'package:gratitude/view/item_edit_view.dart';
import 'package:gratitude/view/setting_view.dart';
import 'package:gratitude/widget/master_list.dart';

final Map<String, WidgetBuilder> routesMap = {
  '/': (context) => Home(),
  ItemAddView.routeName: (context) => ItemAddView(),
  ItemEditView.routeName: (context) => ItemEditView(),
  AboutView.routeName: (context) => AboutView(),
  SettingView.routeName: (context) => SettingView(),
};

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
      initialRoute: '/',
      routes: routesMap,
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
        //onPressed: _addItem,
        onPressed: () {
          Navigator.pushNamed(context, AboutView.routeName);
        },
        tooltip: 'Add Gratitude',
        child: const Icon(Icons.add),
      ),
    );
  }

  // void _addItem() {
  //   showDialog(
  //       context: context,
  //       builder: (_) => new AlertDialog(
  //             title: new Text("Gratitude"),
  //             content: new Text("In the future, you can add a gratitude here!"),
  //             actions: <Widget>[
  //               FlatButton(
  //                 child: Text('OK'),
  //                 onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //               )
  //             ],
  //           ));
  // }
}
