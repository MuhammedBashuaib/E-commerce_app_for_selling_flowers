import 'package:flutter/material.dart';

import 'package:e_store_app/const.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.myDarkGreen,
      title: const Text("Home"),
      actions: [
        Row(
          children: [
            Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_shopping_cart),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: MyColors.myLightGreen,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    "8",
                    style: TextStyle(
                      fontSize: fSize,
                      color: MyColors.myBlackFont,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                "\$139",
                style: TextStyle(fontSize: fSize, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ],
    );
  }
}
