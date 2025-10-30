import 'package:flutter/material.dart';
import 'package:grocery_app/pages/home_page/components/home_divider.dart';
import 'package:grocery_app/pages/home_page/components/home_header.dart';
import 'package:grocery_app/pages/home_page/components/home_lead_in.dart';
import 'package:grocery_app/pages/home_page/components/home_subtitle.dart';
import 'package:grocery_app/pages/home_page/components/payment_button.dart';
import 'package:grocery_app/pages/home_page/components/product_list/product_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: PaymentButton(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 720),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                HomeLeadIn(),
                SizedBox(height: 4),
                HomeHeader(),
                SizedBox(height: 8),
                HomeDivider(),
                HomeSubtitle(),
                ProductList(),
              ], // children
            ),
          ),
        ),
      ),
    );
  }
}
