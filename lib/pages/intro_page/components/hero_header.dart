import 'package:flutter/material.dart';

class HeroHeader extends StatelessWidget {
  const HeroHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Text(
        'We deliver groceries to your doorstep',
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
