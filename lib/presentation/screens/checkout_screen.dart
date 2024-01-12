import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:e_store_app/business_logic/provider/cart.dart';
import 'package:e_store_app/presentation/screens/details_screen.dart';
import 'package:e_store_app/presentation/widgets/custom_elevated_button.dart';
import 'package:e_store_app/presentation/widgets/custom_row_appbar_action.dart';
import 'package:e_store_app/const.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myDarkGreen,
        title: const Text("Check out"),
        actions: const [
          CustomRowAppBarAction(
            isIconButton: false,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: heightScreen * .77,
            child: Consumer<Cart>(
              builder: (context, cart, child) {
                return ListView.builder(
                  itemCount: cart.selectedItems.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                  product: cart.selectedItems[index]),
                            ),
                          );
                        },
                        title: Text("${cart.selectedItems[index].name}"),
                        subtitle: Text(
                            "\$${cart.selectedItems[index].price} - ${cart.selectedItems[index].location}"),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              "${cart.selectedItems[index].imagePath}"),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            cart.deleteItem(cart.selectedItems[index]);
                          },
                          icon: MyIcons.remove,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: heightScreen * .01),
            child: Consumer<Cart>(builder: (context, cart, child) {
              return CustomElevatedButton(
                onPressed: () {},
                text: "Pay ${cart.totalPrice.toStringAsFixed(2)}",
                color: MyColors.myPink,
                verticalPadding: heightScreen * .02,
                horizontalPadding: widthScreen * .02,
                textColor: MyColors.myCustomWhite,
              );
            }),
          )
        ],
      ),
    );
  }
}
