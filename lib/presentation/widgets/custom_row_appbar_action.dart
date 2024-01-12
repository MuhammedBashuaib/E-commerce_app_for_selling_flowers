import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:e_store_app/business_logic/provider/cart.dart';
import 'package:e_store_app/const.dart';

class CustomRowAppBarAction extends StatelessWidget {
  final bool isIconButton;
  const CustomRowAppBarAction({super.key, required this.isIconButton});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isIconButton == true
            ? Stack(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("checkout");
                    },
                    icon: MyIcons.addShoppingCart,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: MyColors.myLightGreen,
                      shape: BoxShape.circle,
                    ),
                    child: Consumer<Cart>(
                      builder: (context, cart, child) {
                        return Text(
                          "${cart.selectedItems.length}",
                          style: TextStyle(
                            fontSize: fSize,
                            color: MyColors.myBlackFont,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )
            : Padding(
                padding: EdgeInsets.only(right: widthScreen * .03),
                child: MyIcons.addShoppingCart,
              ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Consumer<Cart>(builder: (context, cart, child) {
            return Text(
              "\$${cart.totalPrice.toStringAsFixed(2)}",
              style: TextStyle(fontSize: fSize, fontWeight: FontWeight.bold),
            );
          }),
        ),
      ],
    );
  }
}
