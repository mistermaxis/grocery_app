import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ['Avocado', '2.00', 'lib/images/avocado.png', Colors.green],
    ['Banana', '1.50', 'lib/images/banana.jpeg', Colors.yellow],
    ['Chicken', '3.00', 'lib/images/chicken.png', Colors.amber],
    ['Water', '2.50', 'lib/images/water.jpeg', Colors.lightBlue],
  ];

  final List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0.0;

    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
