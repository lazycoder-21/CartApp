import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    functiona(10);
    return Scaffold(
      appBar: AppBar(
        title: Text("Got it"),
      ),
      body: Center(
        child: Container(
          child: Text("India"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }

  functiona(int a, {bool app}) {}
}
