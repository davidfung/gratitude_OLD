import 'package:flutter/material.dart';
import 'package:gratitude/provider/mock_data.dart';
import 'package:gratitude/widget/app_widget.dart';

class MasterList extends StatelessWidget {
  const MasterList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: mockdata.map((item) => GItemWidget.fromGItem(item)).toList());
  }
}
