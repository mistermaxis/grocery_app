import 'package:flutter/material.dart';
import 'package:grocery_app/components/grocery_item_tile/components/item_tile_name.dart';
import 'package:grocery_app/components/grocery_item_tile/components/price_button/price_button.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final Color itemColor;
  final void Function()? onPressed;

  const GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.itemColor,
    required this.onPressed,
  });

  BoxDecoration newDecoration() {
    return BoxDecoration(
      color: itemColor.withValues(
        red: itemColor.r * 1.5,
        green: itemColor.g * 1.5,
        blue: itemColor.b * 1.5,
      ),
      borderRadius: BorderRadius.circular(15),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: newDecoration(),
      child: Column(
        children: [
          Expanded(flex: 8, child: Image.asset(imagePath)),
          ItemTileName(tileName: itemName),
          PriceButton(
            buttonColor: itemColor,
            priceText: itemPrice,
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
