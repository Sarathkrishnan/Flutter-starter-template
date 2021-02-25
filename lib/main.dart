import 'package:flutter/material.dart';
import 'package:sample_project/utils/helper.dart';
import 'package:sample_project/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.gernerateRoutes,
      theme: ThemeData(
        primaryColor: Helper.primaryColor,
       // fontFamily: 'Montserrat',
      ),
    );
  }
}
