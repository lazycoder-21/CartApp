class Item {
  final int id;
  final String name;
  final String description;
  final String color;
  final String image;
  final num price;

  Item(
      this.id, this.name, this.description, this.color, this.image, this.price);
}

class CatalogModel {
  static final items = [
    Item(1, "name", "description", "#33505a",
        "https://picsum.photos/250?image=9", 100)
  ];
}
