import 'package:flutter/material.dart';

class PriceButton extends StatelessWidget {
  const PriceButton({
    super.key,
    required this.buttonColor,
    required this.priceText,
    required this.onPressed,
  });

  final String priceText;
  final Color buttonColor;
  final void Function()? onPressed;

  ButtonStyle newButtonStyle() {
    return TextButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.fromLTRB(24, 8, 24, 8),
      backgroundColor: buttonColor.withValues(
        red: buttonColor.r * 0.8,
        green: buttonColor.g * 0.8,
        blue: buttonColor.b * 0.8,
      ),
    );
  }

  Text buttonText() {
    return Text(
      '\$$priceText',
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: newButtonStyle(),
      onPressed: onPressed,
      child: buttonText(),
    );
  }
}
