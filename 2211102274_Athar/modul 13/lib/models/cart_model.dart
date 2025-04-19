import 'package:flutter/foundation.dart';
import 'item.dart';
 
class CartModel extends ChangeNotifier {
  final List<Item> _items = [];
 
  List<Item> get items => _items;
 
  void add(Item item) {
    _items.add(item);
    notifyListeners();
  }
 
  void remove(Item item) {
    _items.remove(item);
    notifyListeners();
  }
 
  int get totalPrice => _items.fold(0, (total, item) => total + item.price);
}