import 'package:flutter/foundation.dart';

import 'file:///D:/Project/Learn/testing_provider_package/lib/models/item.dart';

class ItemProvider extends ChangeNotifier {
  List<Item> _itemList = itemList;

  incrementQty(Item item) {
    item.qty += 1;
    notifyListeners();
  }

  decrementQty(Item item) {
    if (item.qty > 1) {
      item.qty -= 1;
      notifyListeners();
    }
  }
}
