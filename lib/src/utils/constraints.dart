import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:my_app/src/utils/base_color.dart';
// import 'package:my_app/src/utils/messages.dart';

class Constants {
  static const Color getBaseBackgroundColor = Colors.white70;

  static Color get white => Colors.white;

  static const Color baseColor = Color(0xFF126180);

  static const Color black = Colors.black;

  static const double radius = 20;

  static BorderRadius borderRadius = BorderRadius.circular(radius);

  static String get getUUID {
    Random random = Random();
    const String charRandom = "AaBbCcDdEeFfHhIiJjkKLlmMNnoOpPQqRqssS@#%^&*&^0*";
    return String.fromCharCodes(Iterable.generate(
        20, (_) => charRandom.codeUnitAt(random.nextInt(charRandom.length))));
  }
}
