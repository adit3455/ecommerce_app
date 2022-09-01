import 'package:ecommerce/config/themedata.dart';
import 'package:ecommerce/pages/homepage.dart';
import 'package:flutter/material.dart';

import 'config/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      onGenerateRoute: AppRoute.onGenerateRoute,
      initialRoute: HomePage.routeName,
      home: HomePage(),
    );
  }
}
