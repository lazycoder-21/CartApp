import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_1/models/Catalog.dart';
import 'package:flutter_1/widgets/drawer.dart';
import 'package:flutter_1/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var products = decodeData["products"];
    CatalogModel.items =
        List.from(products).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    functiona(10);
    return Scaffold(
      drawerScrimColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: CatalogModel.items != null && CatalogModel.items.isNotEmpty
          ? ListView.builder(
              padding: const EdgeInsets.all(7),
              itemCount: CatalogModel.items.length,
              itemBuilder: (context, index) {
                return ItemWidget(item: CatalogModel.items[index]);
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
    );
  }

  functiona(int a, {bool app}) {}
}
