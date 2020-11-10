import 'package:flutter/material.dart';
import 'package:gratitude/app_header.dart';

class GItem {
  int id;
  DateTime date;
  String content;
  GIconID iconId;

  GItem({
    this.id,
    @required this.date,
    this.content,
    this.iconId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': date,
      'content': content,
      'iconID': iconId,
    };
  }
}
