import 'package:flutter/material.dart';
import 'package:grocery_app/pages/intro_page/components/hero_header.dart';
import 'package:grocery_app/pages/intro_page/components/hero_image.dart';
import 'package:grocery_app/pages/intro_page/components/hero_subtitile.dart';
import 'package:grocery_app/pages/intro_page/hero_button/hero_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeroImage(),
          const HeroHeader(),
          const HeroSubtitile(),
          const SizedBox(height: 40),
          const HeroButton(),
          Spacer(),
        ], // children
      ),
    );
  }
}
