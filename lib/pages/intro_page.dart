import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 80,
              right: 80,
              top: 64,
              bottom: 24,
            ),
            child: Image.asset('lib/images/avocado.png'),
          ),
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              'We deliver groceries to your doorstep',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          // Subtitle
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'Fresh Items Every Day!',
              style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 24,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Colors.brown.shade300,
              ),
            ),
          ),
          SizedBox(height: 40),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Scaffold();
                },
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 25, 92, 23),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Text(
                style: TextStyle(color: Colors.white, fontSize: 18),
                'Get Started ⚡',
              ),
            ),
          ),
          Spacer(),
        ], // children
      ),
    );
  }
}
