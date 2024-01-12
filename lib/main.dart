import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:e_store_app/business_logic/provider/cart.dart';
import 'package:e_store_app/presentation/screens/home_screen.dart';
import 'package:e_store_app/presentation/screens/sign_in.dart';
import 'package:e_store_app/presentation/screens/sign_up.dart';
import 'package:e_store_app/const.dart';
import 'package:e_store_app/presentation/screens/checkout_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    initializeHWFSize(context);
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        routes: {
          "signIn": (context) => const SignInScreen(),
          "signUp": (context) => const SignUpScreen(),
          "home": (context) => const HomeScreen(),
          "checkout": (context) => const CheckOutScreen(),
          //"details": (context) => const DetailsScreen(),
        },
      ),
    );
  }
}
