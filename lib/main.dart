import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:grocery_app/components/main_app.dart';
import 'package:grocery_app/models/cart_model.dart';
import 'package:provider/provider.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MainApp(),
    );
  }
}
