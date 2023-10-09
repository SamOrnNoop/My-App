import 'package:flutter/material.dart';

class NavigatorService {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void push(String pageName, [Object? params]) async {
    return await navigatorKey.currentState!
        .pushNamed<void>(pageName, arguments: params);
  }

  void pop() {
    return navigatorKey.currentState!.pop<void>();
  }

  void replace(String pageName, [Object? params]) async {
    await navigatorKey.currentState!
        .pushReplacementNamed(pageName, arguments: params);
    return;
  }
}
