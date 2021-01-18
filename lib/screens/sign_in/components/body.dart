import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopapp/components/custom_surffix_icon.dart';
import 'package:shopapp/components/default_button.dart';
import 'package:shopapp/components/form_error.dart';
import 'package:shopapp/components/no_account_text.dart';
import 'package:shopapp/components/socal_card.dart';
import 'package:shopapp/constants.dart';
import 'package:shopapp/screens/forgot_password/forgot_password_screen.dart';
import 'package:shopapp/size_config.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView( // scroll thanh Sign in
                      child: Column(
              children: <Widget>[
                SizedBox(height: SizeConfig.screenHeight*0.04,),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.08,),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight*0.08,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: (){},
                    ),
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: (){},
                    ),
                    SocalCard(
                      icon: "assets/icons/twitter.svg",
                      press: (){},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20),),
                NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}