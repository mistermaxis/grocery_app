import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grocery_app/components/my_app.dart';
import 'package:grocery_app/models/cart_model.dart';
import 'package:provider/provider.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MyApp(),
    )
  );
}