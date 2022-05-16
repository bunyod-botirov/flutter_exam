import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/home/home_view.dart';
import 'package:flutter_exam/screens/hot_page.dart';
import 'package:flutter_exam/screens/single_page.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    Object? args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
      case "/hot":
        return MaterialPageRoute(
          builder: (context) => const HotPage(),
        );
      case "/single":
        return MaterialPageRoute(
          builder: (context) => const SinglePage(),
        );
    }
    return null;
  }
}
