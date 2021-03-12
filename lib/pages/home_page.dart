import 'package:flutter/material.dart';

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
      drawer: Drawer(),
    );
  }

  functiona(int a,{bool app}) {}
}
