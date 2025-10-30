import 'package:flutter/material.dart';

class ItemTileName extends StatelessWidget {
  const ItemTileName({super.key, required this.tileName});

  final String tileName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Text(tileName, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
