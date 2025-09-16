import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final Color color;

  const GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color.withValues(red: color.r * 1.5, green: color.g * 1.5, blue: color.b * 1.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(imagePath, height: 64,),
            Text(itemName, style: TextStyle(fontWeight: FontWeight.bold),),
            MaterialButton(
              color: color.withValues(red: color.r * 0.8, green: color.g * 0.8, blue: color.b * 0.8),
              onPressed: () {},
              child: Text(
                '\$$itemPrice',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
