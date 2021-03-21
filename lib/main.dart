import 'package:flutter/material.dart';
import 'package:flutter_1/pages/cart_page.dart';
import 'package:flutter_1/pages/home_detail_page.dart';
import 'package:flutter_1/pages/home_page.dart';
import 'package:flutter_1/pages/login_page.dart';
import 'package:flutter_1/utils/Routes.dart';
import 'package:flutter_1/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage()
      },
    );
  }
}
