import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Text(
        'Let\'s order fresh items for you',
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
