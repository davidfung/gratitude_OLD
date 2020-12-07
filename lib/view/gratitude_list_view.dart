import 'package:flutter/material.dart';
import 'package:gratitude/widget/gratitude_widget.dart';
import 'package:provider/provider.dart';

import '../provider/gratitude_provider.dart';

class GratitudeView extends StatefulWidget {
  @override
  _GratitudeViewState createState() => _GratitudeViewState();
}

class _GratitudeViewState extends State<GratitudeView> {
  @override
  Widget build(BuildContext context) {
    final gratitudes = Provider.of<Gratitudes>(context);
    return ListView.builder(
      itemCount: gratitudes.items.length,
      itemBuilder: (context, index) {
        final taskName = gratitudes.items[index].content;
        return Dismissible(
          key: UniqueKey(),
          onDismissed: (direction) {
            gratitudes.removeTask(index);
          },
          background: Container(
              alignment: AlignmentDirectional.centerStart,
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Icon(Icons.cancel, color: Colors.white),
              )),
          child: GratitudeWidget.fromItem(gratitudes.items[index]),
          secondaryBackground: Container(
              alignment: AlignmentDirectional.centerEnd,
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: Icon(Icons.cancel, color: Colors.white),
              )),
        );
      },
    );
  }
}
