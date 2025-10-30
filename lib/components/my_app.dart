import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/pages/intro_page/intro_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Grocery App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          textTheme: GoogleFonts.notoSansTextTheme(
            Theme.of(context).textTheme.apply(),
          ),
        ),
        home: const IntroPage(),
      );
  }
}