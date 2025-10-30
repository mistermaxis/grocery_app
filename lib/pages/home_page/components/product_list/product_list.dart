import 'package:flutter/material.dart';
import 'package:grocery_app/models/cart_model.dart';
import 'package:grocery_app/pages/home_page/components/product_list/components/grocery_item_list.dart';
import 'package:provider/provider.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<CartModel>(
        builder: (context, value, child) =>
          GroceryItemList(value: value),
      ),
    );
  }
}
