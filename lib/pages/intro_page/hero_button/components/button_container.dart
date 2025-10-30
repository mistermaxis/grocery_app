import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 25, 92, 23),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Text(
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 20,),
        'Get Started ⚡',
      ),
    );
  }
}
