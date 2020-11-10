import 'package:flutter/material.dart';
import 'package:gratitude/app_header.dart';
import 'package:gratitude/model/app_model.dart';
import 'package:intl/intl.dart';

class GItemWidget extends StatelessWidget {
  final String title;
  final String body;
  final Icon icon;

  GItemWidget(this.title, this.body, this.icon);

  GItemWidget.fromGItem(GItem item)
      : title = DateFormat("EEEE, MMMM d, yyyy").format(item.date),
        body = item.content,
        icon = GIconSet[item.iconId];

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

class GDividerWidget extends StatelessWidget {
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
