import 'package:flutter/material.dart';

abstract class BaseColor {
  static Color baseColor = const Color(0xFF126180);

  static const Color baseBackgroundColor = Colors.white70;

  static Color get getBackgrounColor => baseBackgroundColor;

  // static Color get getBaseColor => baseColor;
}
