import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.purple,
      cardColor: Colors.white,
      canvasColor: creamColor,
      buttonColor: darkBluish,
      accentColor: darkBluish,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.blue),
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: Colors.blue, displayColor: Colors.blue)));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.purple,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      buttonColor: lightBluish,
      accentColor: Colors.white,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: Theme.of(context).textTheme.copyWith(
              headline6:
                  context.textTheme.headline6.copyWith(color: Colors.white))));

  static Color creamColor = Vx.gray100;
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluish = Color(0xff402b58);
  static Color lightBluish = Vx.purple400;
}
