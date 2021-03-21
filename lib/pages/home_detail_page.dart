import 'package:flutter/material.dart';
import 'package:flutter_1/models/Catalog.dart';
import 'package:flutter_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: MyTheme.creamColor,
        bottomNavigationBar: Container(
          color: Colors.white,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.make(),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(MyTheme.darkBluish),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  child: "Add to cart".text.make())
            ],
          ).px12().p4(),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image)),
              Expanded(
                child: VxArc(
                    height: 24,
                    arcType: VxArcType.CONVEY,
                    edge: VxEdge.TOP,
                    child: Container(
                      width: context.screenWidth,
                      color: Colors.white,
                      child: Column(
                        children: [
                          catalog.name.text.xl4
                              .color(MyTheme.darkBluish)
                              .bold
                              .make(),
                          catalog.description.text.xl
                              .textStyle(context.captionStyle)
                              .make(),
                          10.heightBox,
                        ],
                      ).p24(),
                    )),
              ),
            ],
          ),
        ));
  }
}
