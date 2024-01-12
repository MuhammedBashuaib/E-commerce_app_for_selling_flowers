import 'package:flutter/material.dart';

import 'package:e_store_app/data/models/item.dart';

class Cart extends ChangeNotifier {
  double _totalPrice = 0;
  final List<Item> _selectedItems = [];

  addList(Item item) {
    _selectedItems.add(item);
    _totalPrice += item.price;
    notifyListeners();
  }

  deleteItem(Item item) {
    _selectedItems.remove(item);
    _totalPrice -= item.price;
    notifyListeners();
  }

  get selectedItems => _selectedItems;
  get totalPrice => _totalPrice;
}
