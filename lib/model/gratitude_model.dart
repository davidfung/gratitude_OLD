import 'package:flutter/material.dart';

class Gratitude {
  int id;
  DateTime cdate;
  String content;
  int icon;

  Gratitude({
    this.id,
    @required this.cdate,
    this.content,
    this.icon,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cdate': cdate,
      'content': content,
      'icon': icon,
    };
  }
}
