import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/gratitude_provider.dart';

class GratitudeEditView extends StatelessWidget {
  static const String title = "Edit Gratitude";

  @override
  Widget build(BuildContext context) {
    final int index = ModalRoute.of(context).settings.arguments;
    final String taskName = Provider.of<Gratitudes>(context).items[index].content;
    final _teController = TextEditingController();

    String _title;
    _teController.text = taskName;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          SizedBox(width: 15)
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              keyboardType: TextInputType.multiline,
              maxLines: 10,
              controller: _teController,
              onChanged: (title) {
                _title = title;
              },
            ),
            RaisedButton(
              child: Text("SAVE"),
              onPressed: () {
                if (_title != null) {
                  Provider.of<Gratitudes>(context).editItem(index, _title.trim());
                }
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
