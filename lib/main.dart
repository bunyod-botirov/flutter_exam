import 'package:flutter/material.dart';
import 'package:flutter_exam/core/constants/theme_const.dart';
import 'package:flutter_exam/core/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exam',
      debugShowCheckedModeBanner: false,
      theme: ThemeConst.lightTheme,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: "/",
    );
  }
}
