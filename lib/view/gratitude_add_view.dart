import 'package:flutter/material.dart';
import 'package:gratitude/model/gratitude_model.dart';
import 'package:gratitude/provider/gratitude_provider.dart';
import 'package:provider/provider.dart';

class GratitudeAddView extends StatelessWidget {
  static const String title = 'Add a Gratitude';
  static const String _addButtonName = "Add";

  @override
  Widget build(BuildContext context) {
    String _title;
    final _teController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
              child: Text(_addButtonName),
              onPressed: () {
                _title = _teController.text ?? "";
                if (_title.length > 0) {
                  Provider.of<Gratitudes>(context, listen: false)
                      .addTask(Gratitude(content: _title.trim()));
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
