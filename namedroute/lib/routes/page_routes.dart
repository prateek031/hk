// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:namedroute/main.dart';
import 'package:namedroute/pages/secondpage.dart';
import 'package:namedroute/pages/thiedpage.dart';

class AppRoutes {
  Route OnGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => MyHomePage(
            title: "HomeScreen",
          ),
        );

      case "/second":
        return MaterialPageRoute(
          builder: (_) => SecondPage(),
        );

      case "/third":
        return MaterialPageRoute(builder: (_) => ThirdPage());

      default:
        return MaterialPageRoute(
          builder: (_) => MyHomePage(
            title: "HomeScreen",
          ),
        );
    }
  }
}
