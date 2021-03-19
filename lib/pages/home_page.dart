import 'package:flutter/material.dart';
import 'package:flutter_1/models/Catalog.dart';
import 'package:flutter_1/widgets/drawer.dart';
import 'package:flutter_1/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final dummyList = List.generate(14, (index) => CatalogModel.items[0]);
  @override
  Widget build(BuildContext context) {
    functiona(10);
    return Scaffold(
      drawerScrimColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(7),
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: dummyList[index]);
        },
      ),
      drawer: MyDrawer(),
    );
  }

  functiona(int a, {bool app}) {}
}
