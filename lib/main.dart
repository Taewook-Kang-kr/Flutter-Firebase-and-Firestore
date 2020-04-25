import 'package:questor/ui/views/startup_view.dart';
import 'package:flutter/material.dart';
import 'package:questor/services/navigation_service.dart';
import 'package:questor/services/dialog_service.dart';
import 'managers/dialog_manager.dart';
import 'ui/router.dart';
import 'locator.dart';

void main() {
  setupLocator();
  runApp(QuestorApp());
}

class QuestorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Questor',
      builder: (context, child) => Navigator(
        key: locator<DialogService>().dialogNavigationKey,
        onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (context) => DialogManager(child: child,)
        ),
      ),
      navigatorKey: locator<NavigationService>().navigationKey,
      theme: ThemeData(
        primaryColor: Color(0xff19c7c1),
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Open Sans',
        ),
      ),
      home: SafeArea(child: StartUpView()),
      onGenerateRoute: generateRoute,
    );
  }
}