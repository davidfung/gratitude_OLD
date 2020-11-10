import 'package:flutter/material.dart';

// App main color
Map<int, Color> blueColorMap = {
  50: Color.fromRGBO(0x8a, 0xbe, 0xf2, .1),
  100: Color.fromRGBO(0x8a, 0xbe, 0xf2, .2),
  200: Color.fromRGBO(0x8a, 0xbe, 0xf2, .3),
  300: Color.fromRGBO(0x8a, 0xbe, 0xf2, .4),
  400: Color.fromRGBO(0x8a, 0xbe, 0xf2, .5),
  500: Color.fromRGBO(0x8a, 0xbe, 0xf2, .6),
  600: Color.fromRGBO(0x8a, 0xbe, 0xf2, .7),
  700: Color.fromRGBO(0x8a, 0xbe, 0xf2, .8),
  800: Color.fromRGBO(0x8a, 0xbe, 0xf2, .9),
  900: Color.fromRGBO(0x8a, 0xbe, 0xf2, 1),
};

Map<int, Color> greenColorMap = {
  50: Color.fromRGBO(0xcd, 0xdb, 0x89, .1),
  100: Color.fromRGBO(0xcd, 0xdb, 0x89, .2),
  200: Color.fromRGBO(0xcd, 0xdb, 0x89, .3),
  300: Color.fromRGBO(0xcd, 0xdb, 0x89, .4),
  400: Color.fromRGBO(0xcd, 0xdb, 0x89, .5),
  500: Color.fromRGBO(0xcd, 0xdb, 0x89, .6),
  600: Color.fromRGBO(0xcd, 0xdb, 0x89, .7),
  700: Color.fromRGBO(0xcd, 0xdb, 0x89, .8),
  800: Color.fromRGBO(0xcd, 0xdb, 0x89, .9),
  900: Color.fromRGBO(0xcd, 0xdb, 0x89, 1),
};

MaterialColor appColor = MaterialColor(0xFF8abef2, blueColorMap);
MaterialColor secColor = MaterialColor(0xFFcddb89, greenColorMap);

const String APP_TITLE = "Gratitude";

enum GIconID {
  add_alert,
  assistant_photo,
  attach_file,
  call,
  directions_bike,
  directions_walk,
  people,
  portrait,
}

const Map<GIconID, Icon> GIconSet = {
  GIconID.add_alert: Icon(Icons.add_alert),
  GIconID.assistant_photo: Icon(Icons.assistant_photo),
  GIconID.attach_file: Icon(Icons.attach_file),
  GIconID.call: Icon(Icons.call),
  GIconID.directions_bike: Icon(Icons.directions_bike),
  GIconID.directions_walk: Icon(Icons.directions_walk),
  GIconID.people: Icon(Icons.people),
  GIconID.portrait: Icon(Icons.portrait),
};
