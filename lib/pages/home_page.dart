import 'package:flutter/material.dart';
import 'package:grocery_app/components/grocery_item_tile.dart';
import 'package:grocery_app/models/cart_model.dart';
import 'package:grocery_app/pages/cart_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CartPage();
            },
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 25, 92, 23),
        child: Icon(Icons.attach_money_sharp, color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Good morning',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 72, 72, 72),
                ),
              ),
            ),
            const SizedBox(height: 4),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Let\'s order fresh items for you',
                style: TextStyle(fontSize: 28),
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(thickness: 1, color: Colors.grey),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text('Fresh Items', style: TextStyle(fontSize: 24)),
            ),
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) => GridView.builder(
                  itemCount: value.shopItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1 / 1.3,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return GroceryItemTile(
                      itemName: value.shopItems[index][0],
                      itemPrice: value.shopItems[index][1],
                      imagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                    );
                  },
                ),
              ),
            ),
          ], // children
        ),
      ),
    );
  }
}
