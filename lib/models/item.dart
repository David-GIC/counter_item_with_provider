class Item {
  String item;
  int qty;
  double price;

  Item({this.item, this.qty, this.price});
}

List<Item> itemList = [
  Item(item: "Ice Latte", qty: 1, price: 2.00),
  Item(item: "Capuchino", qty: 2, price: 4.00),
];
