import 'package:flutter/material.dart';

class HomeDivider extends StatelessWidget {
  const HomeDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Divider(thickness: 1, color: Colors.grey),
    );
  }
}