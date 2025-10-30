import 'package:flutter/material.dart';

class HomeLeadIn extends StatelessWidget {
  const HomeLeadIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Text(
        'Good morning',
        style: TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 72, 72, 72),
        ),
      ),
    );
  }
}
