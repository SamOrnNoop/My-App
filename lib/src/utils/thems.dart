import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/src/utils/constraints.dart';

ThemeData theme = ThemeData(
  primaryColor: Constants.baseColor,
  appBarTheme: const AppBarTheme(
      backgroundColor: Constants.baseColor,
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: Colors.transparent)),
  scaffoldBackgroundColor: Constants.getBaseBackgroundColor,
);
