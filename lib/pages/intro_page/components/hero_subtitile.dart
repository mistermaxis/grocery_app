import 'package:flutter/material.dart';

class HeroSubtitile extends StatelessWidget {
  const HeroSubtitile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Text(
        'Fresh Items Every Day!',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 24,
          decoration: TextDecoration.underline,
          decorationThickness: 2,
          decorationColor: Colors.brown,
        ),
      ),
    );
  }
}
