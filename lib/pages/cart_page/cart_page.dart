import 'package:flutter/material.dart';
import 'package:grocery_app/models/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 720),
            child: AppBar(
              title: Text('My Cart'),
            ),
          ),
        )
        ),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 720),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.all(12),
                      itemCount: value.cartItems.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                              leading: Image.asset(
                                value.cartItems[index].image,
                              ),
                              title: Text(value.cartItems[index].name),
                              subtitle: Text(
                                '\$${value.cartItems[index].price}',
                              ),
                              trailing: IconButton(
                                tooltip: 'Remove Item',
                                icon: Icon(Icons.cancel),
                                onPressed: () => Provider.of<CartModel>(
                                  context,
                                  listen: false,
                                ).removeItemFromCart(index),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Container(
                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Price',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '\$${value.calculateTotal()}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: BoxBorder.all(
                                color: Colors.green.shade200,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Pay Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
