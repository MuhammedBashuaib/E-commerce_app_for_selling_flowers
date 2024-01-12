import 'package:flutter/material.dart';

//my colors
//////////////////////////////////////////////////////////////

class MyColors {
  static const Color myWhite = Colors.white;
  static const Color myCustomWhite = Color.fromARGB(255, 247, 247, 247);
  static const Color myGrey = Colors.grey;
  static const Color myPink = Color.fromARGB(255, 241, 39, 100);
  static const Color myGreen = Color.fromARGB(255, 73, 179, 105);
  static const Color myDarkGreen = Color.fromARGB(255, 76, 141, 95);
  static const Color myBlack = Colors.black;
  static const Color myBlackFont = Color.fromARGB(255, 0, 0, 0);
  static const Color myLightGreen = Color.fromARGB(211, 164, 255, 193);
  static const Color myAmber = Colors.amber;
}
//////////////////////////////////////////////////////////////

//my images
//////////////////////////////////////////////////////////////
class MyImages {
  static const AssetImage test = AssetImage("assets/images/test.jpg");
  static const AssetImage muhammed = AssetImage("assets/images/muhammed.jpg");
}
//////////////////////////////////////////////////////////////

//my
//////////////////////////////////////////////////////////////
class MyIcons {
  static const Icon home = Icon(Icons.home);
  static const Icon addShoppingCart = Icon(Icons.add_shopping_cart);
  static const Icon about = Icon(Icons.help_center);
  static const Icon logout = Icon(Icons.exit_to_app);
  static const Icon remove = Icon(Icons.remove);
}
//////////////////////////////////////////////////////////////

//Screen coordinates and the default size of the font
//////////////////////////////////////////////////////////////
double widthScreen = 0;
double heightScreen = 0;
double fSize = 0;

initializeHWFSize(BuildContext context) {
  widthScreen = MediaQuery.of(context).size.width;
  heightScreen = MediaQuery.of(context).size.height;
  fSize = widthScreen / 25;
}
//////////////////////////////////////////////////////////////

