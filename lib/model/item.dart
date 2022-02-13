import 'package:flutter/material.dart';

class ItemModel extends ChangeNotifier {
  List<Item> _Items = <Item> [
    Item("test1"),
    Item("test2"),
    Item("test3"),
  ];

  List<Item> get Items => _Items;

  void add(Item Item) {
    _Items.add(Item);
    notifyListeners();
  }
}

class Item {
  final String title;
  const Item(this.title);
}