import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:e_store_app/business_logic/provider/cart.dart';
import 'package:e_store_app/const.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: MyColors.myCustomWhite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: MyImages.test,
                    fit: BoxFit.cover,
                  ),
                ),
                accountName: Text(
                  "Muhammed Omer",
                  style: TextStyle(
                    fontSize: fSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "muhammedbashaib@gmail.com",
                  style: TextStyle(
                    fontSize: fSize * .9,
                  ),
                ),
                currentAccountPictureSize: Size.square(heightScreen * .11),
                currentAccountPicture: const CircleAvatar(
                  radius: 55,
                  backgroundImage: MyImages.muhammed,
                ),
              ),
              SizedBox(
                height: heightScreen * .03,
              ),
              ListTile(
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: fSize),
                ),
                leading: MyIcons.home,
                onTap: () {
                  Navigator.of(context).pushNamed("home");
                },
              ),
              Consumer<Cart>(
                builder: (context, cart, child) => ListTile(
                  title: Text(
                    "My products",
                    style: TextStyle(fontSize: fSize),
                  ),
                  leading: MyIcons.addShoppingCart,
                  onTap: () {
                    Navigator.of(context).pushNamed("checkout");
                  },
                ),
              ),
              ListTile(
                title: Text(
                  "About",
                  style: TextStyle(fontSize: fSize),
                ),
                leading: MyIcons.about,
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "logout",
                  style: TextStyle(fontSize: fSize),
                ),
                leading: MyIcons.logout,
                onTap: () {},
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: heightScreen * .035),
            child: Text("Developed by Muhammed Bashuaib © 2024",
                style: TextStyle(
                  fontSize: fSize * .8,
                  fontWeight: FontWeight.bold,
                )),
          )
        ],
      ),
    );
  }
}
