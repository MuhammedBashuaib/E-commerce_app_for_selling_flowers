import 'package:flutter/material.dart';

import 'package:e_store_app/const.dart';
import 'package:e_store_app/presentation/widgets/custom_elevated_button.dart';
import 'package:e_store_app/presentation/widgets/custom_text_button.dart';
import 'package:e_store_app/presentation/widgets/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.myCustomWhite,
        appBar: AppBar(
          backgroundColor: MyColors.myBlack,
        ),
        body: Container(
          margin: EdgeInsets.all(widthScreen * .05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: heightScreen * .2,
              // ),
              CustomTextField(
                hintText: "Enter your email:",
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                controller: email,
              ),
              SizedBox(
                height: heightScreen * .05,
              ),
              CustomTextField(
                hintText: "Enter your password:",
                keyboardType: TextInputType.text,
                obscureText: true,
                controller: password,
              ),
              SizedBox(
                height: heightScreen * .05,
              ),
              CustomElevatedButton(
                onPressed: () {},
                textColor: MyColors.myBlackFont,
                color: MyColors.myGreen,
                text: "Sign in",
                horizontalPadding: widthScreen * .05,
                verticalPadding: heightScreen * .015,
              ),
              SizedBox(
                height: heightScreen * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do not have an account ?",
                    style: TextStyle(
                      fontSize: fSize * 1.1,
                    ),
                  ),
                  CustomTextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("signUp");
                    },
                    text: "Sign up",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
