class CatalogModel{
static final items = [
  Item(
    id: 001, 
    name: "iPhone 11", 
    desc: "Brand new 11th generation", 
    price: 600, 
    color: "#33505a", 
    image: "https://i.ibb.co/XLSNWXQ/61d2f93392b57c0004c64747.png")
];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}


