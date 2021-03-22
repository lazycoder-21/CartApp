class Item {
  final int id;
  final String name;
  final String description;
  final String color;
  final String image;
  final num price;

  Item(
      {this.id,
      this.name,
      this.description,
      this.color,
      this.image,
      this.price});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      description: map["description"],
      color: map["color"],
      image: map["image"],
      price: map["price"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "color": color,
        "image": image,
        "price": price,
      };
}

class CatalogModel {
  static List<Item> items;

  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  Item getByPosition(int pos) => items[pos];
}
