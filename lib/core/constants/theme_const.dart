import 'package:flutter/material.dart';
import 'package:flutter_exam/core/constants/colors_const.dart';

class ThemeConst {
  static ThemeData lightTheme = ThemeData(
    fontFamily: "Nunito",
    primarySwatch: const MaterialColor(
      0xFFFFFFFF,
      {
        50: Color.fromRGBO(225, 225, 225, .1),
        100: Color.fromRGBO(225, 225, 225, .2),
        200: Color.fromRGBO(225, 225, 225, .3),
        300: Color.fromRGBO(225, 225, 225, .4),
        400: Color.fromRGBO(225, 225, 225, .5),
        500: Color.fromRGBO(225, 225, 225, .6),
        600: Color.fromRGBO(225, 225, 225, .7),
        700: Color.fromRGBO(225, 225, 225, .8),
        800: Color.fromRGBO(225, 225, 225, .9),
        900: Color.fromRGBO(225, 225, 225, 1),
      },
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsConst.white,
    ),
  );
}
