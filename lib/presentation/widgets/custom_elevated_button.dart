import 'package:flutter/material.dart';

import 'package:e_store_app/const.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final Function()? onPressed;
  final double verticalPadding;
  final double horizontalPadding;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.color,
    this.onPressed,
    required this.verticalPadding,
    required this.horizontalPadding,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding,
        )),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widthScreen * .015),
        )),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: fSize * 1.3,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
