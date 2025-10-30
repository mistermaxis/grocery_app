import 'package:flutter/material.dart';
import 'package:grocery_app/models/grocery_item.dart';

class CartModel extends ChangeNotifier {
  final List<GroceryItem> _groceryItems = [
    GroceryItem(
      name: 'Avocado',
      price: '2.00',
      image: 'lib/images/avocado.png',
      color: Colors.green,
    ),
    GroceryItem(
      name: 'Banana',
      price: '1.50',
      image: 'lib/images/banana.jpeg',
      color: Colors.yellow,
    ),
    GroceryItem(
      name: 'Chicken',
      price: '3.00',
      image: 'lib/images/chicken.png',
      color: Colors.amber,
    ),
    GroceryItem(
      name: 'Water',
      price: '2.50',
      image: 'lib/images/water.jpeg',
      color: Colors.lightBlue,
    ),
  ];

  final List<GroceryItem> _cartItems = [];

  List<GroceryItem> get cartItems => _cartItems;

  List<GroceryItem> get groceryItems => _groceryItems;

  void addItemToCart(int index) {
    _cartItems.add(_groceryItems[index]);
    notifyListeners();
  }

  /// Delete the grocery item from the cart, it takes
  /// an idex and operates on List&lt;GroceryItem&gt; _cartItem private field.
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0.0;

    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i].price);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
