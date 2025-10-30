import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 80, right: 80, top: 64, bottom: 24),
      child: Image.asset('lib/images/avocado.png'),
    );
  }
}
