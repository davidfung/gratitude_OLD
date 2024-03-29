import '../app_header.dart';

class Gratitude {
  int id;
  DateTime cdate;
  String content;
  int icon;

  Gratitude({this.id, this.cdate, this.content, this.icon}) {
    if (null == this.cdate) {
      this.cdate = DateTime.now();
    }
    if (null == this.icon) {
      this.icon = icon_default;
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cdate': cdate.toIso8601String(),
      'content': content,
      'icon': icon,
    };
  }
}
