class Item {
  final String id;
  final String name;
  final String description;
  final String color;
  final String image;
  final num price;

  Item(this.id, this.name, this.description, this.color, this.image, this.price);
}

final products = [
  Item("id", "name", "description", "#33505a", "image", 100)
];
