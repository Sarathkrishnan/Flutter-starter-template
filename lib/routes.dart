import 'package:flutter/material.dart';
import 'package:sample_project/screens/sampleUI.dart';

class RouteGenerator {
  static Route<dynamic> gernerateRoutes(
    RouteSettings settings,
  ) {
    final arguments = settings.arguments;
    final route = settings.name;
    final removeBack = [
      '/',
      '/sample',
    ];

    print("argument" + settings.arguments.toString());

    return MaterialPageRoute(builder: (context) {
      // Loading loader = Provider.of<Loading>(context);
      return Stack(
        children: <Widget>[
          RouteWidget(route: route, arguments: arguments),
        ],
      );
    });
  }
}

class RouteWidget extends StatelessWidget {
  final dynamic route;
  final dynamic arguments;
  RouteWidget({this.route, this.arguments});

  @override
  Widget build(BuildContext context) {
    switch (route) {
      

      case '/':
        return Sample();

      default:
        return Sample();
    }
  }
}