import 'package:flutter/material.dart';

import 'package:e_store_app/const.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const CustomTextButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: fSize * 1.1,
            fontWeight: FontWeight.bold,
            color: MyColors.myBlack,
          ),
        ));
  }
}
