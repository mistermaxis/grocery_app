import 'package:flutter/material.dart';
import 'package:grocery_app/pages/home_page.dart';
import 'package:grocery_app/pages/intro_page/hero_button/components/button_container.dart';

class HeroButton extends StatelessWidget {
  const HeroButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const HomePage();
          },
        ),
      ),
      child: const ButtonContainer(),
    );
  }
}
