import 'package:flutter/material.dart';

class HomeSubtitle extends StatelessWidget {
  const HomeSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Text('Fresh Items', style: TextStyle(fontSize: 24)),
    );
  }
}
