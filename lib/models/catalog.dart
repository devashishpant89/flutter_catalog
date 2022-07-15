class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final products = [
  Item(id: "001", name: "iPhone 11", desc: "Brand new 12th generation", price: 600, color: "#33505a", image: "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-11-2.jpg")
];
