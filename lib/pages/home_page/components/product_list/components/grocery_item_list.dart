import 'package:flutter/material.dart';
import 'package:grocery_app/components/grocery_item_tile/grocery_item_tile.dart';
import 'package:grocery_app/models/cart_model.dart';
import 'package:provider/provider.dart';

class GroceryItemList extends StatelessWidget {
  const GroceryItemList({super.key, required this.value});

  final CartModel value;

  SliverGridDelegateWithFixedCrossAxisCount newGridDelegate(int width) {
    return SliverGridDelegateWithFixedCrossAxisCount(
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      crossAxisCount: width > 480
          ? width > 720
                ? 3
                : 2
          : 1,
    );
  }

  Widget? newItemTile(BuildContext context, int index) {
    return GroceryItemTile(
      itemName: value.groceryItems[index].name,
      itemPrice: value.groceryItems[index].price,
      imagePath: value.groceryItems[index].image,
      itemColor: value.groceryItems[index].color,
      onPressed: () => {
        Provider.of<CartModel>(context, listen: false).addItemToCart(index),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    int screenWidth = MediaQuery.sizeOf(context).width.toInt();

    return GridView.builder(
      itemCount: value.groceryItems.length,
      padding: EdgeInsets.all(16),
      gridDelegate: newGridDelegate(screenWidth),
      itemBuilder: (context, index) => newItemTile(context, index),
    );
  }
}
