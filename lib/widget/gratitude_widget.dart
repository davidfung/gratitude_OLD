import 'package:flutter/material.dart';
import 'package:gratitude/app_header.dart';
import 'package:gratitude/model/gratitude_model.dart';
import 'package:gratitude/provider/gratitude_provider.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class GratitudeListWidget extends StatefulWidget {
  @override
  _GratitudeListWidgetState createState() => _GratitudeListWidgetState();
}

class _GratitudeListWidgetState extends State<GratitudeListWidget> {
  @override
  Widget build(BuildContext context) {
    final gratitudes = Provider.of<Gratitudes>(context);
    return ListView.builder(
      itemCount: gratitudes.items.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: UniqueKey(),
          onDismissed: (direction) {
            gratitudes.removeItem(index);
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

class GratitudeWidget extends StatelessWidget {
  final String title;
  final String body;
  final Icon icon;

  GratitudeWidget(this.title, this.body, this.icon);

  GratitudeWidget.fromItem(Gratitude item)
      : title = DateFormat("EEEE, MMMM d, yyyy").format(item.cdate),
        body = item.content,
        icon = GIconSet[item.icon];

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
      subtitle:
          Text(body, style: TextStyle(fontSize: 14.0, color: Colors.black)),
    );
  }
}

class GDividerWidgetNOTUSE extends StatelessWidget {
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
