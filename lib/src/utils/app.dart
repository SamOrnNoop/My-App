import 'package:flutter/material.dart';
import 'package:my_app/src/pages/home.dart';
import 'package:my_app/src/utils/app_route.dart';
import 'package:my_app/src/utils/locator.dart';
import 'package:my_app/src/utils/navigator_state.dart';
import 'package:my_app/src/utils/thems.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: getIt<NavigatorService>().navigatorKey,
      onGenerateRoute: AppRoutors.onGenerateRoute,
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const HomeApp(),
    );
  }
}
