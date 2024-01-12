import 'package:flutter/material.dart';

import 'package:e_store_app/const.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType keyboardType;
  final bool obscureText;
  final String hintText;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.keyboardType,
    required this.obscureText,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.myGrey),
        ),
        filled: true,
        //fillColor: MyColors.myLightGrey,
        contentPadding: EdgeInsets.all(widthScreen * .023),
      ),
    );
  }
}
