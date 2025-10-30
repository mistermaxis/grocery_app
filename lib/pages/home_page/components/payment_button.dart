import 'package:flutter/material.dart';
import 'package:grocery_app/pages/cart_page/cart_page.dart';

class PaymentButton extends StatelessWidget {
  const PaymentButton({super.key});

  void _gotoCartPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return CartPage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Proceed to cart',
      onPressed: () => _gotoCartPage(context),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      backgroundColor: const Color.fromARGB(255, 25, 92, 23),
      child: Icon(Icons.attach_money_sharp, color: Colors.white),
    );
  }
}
