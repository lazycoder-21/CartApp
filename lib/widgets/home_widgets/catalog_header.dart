import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        "Catalog App".text.xl4.bold.color(MyTheme.darkBluish).make(),
        "Trending Products".text.xl2.make()
      ],
    );
  }
}