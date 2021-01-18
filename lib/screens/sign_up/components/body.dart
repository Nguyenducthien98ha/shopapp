import 'package:flutter/material.dart';
import 'package:shopapp/components/custom_surffix_icon.dart';
import 'package:shopapp/components/default_button.dart';
import 'package:shopapp/components/form_error.dart';
import 'package:shopapp/components/socal_card.dart';
import 'package:shopapp/constants.dart';
import 'package:shopapp/screens/sign_up/components/sign_up_form.dart';
import 'package:shopapp/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
                          child: Column(
        children: <Widget>[
          SizedBox(
                height: SizeConfig.screenHeight*0.03,
              ),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Commplete your or continue \n with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight*0.02,
              ),
              SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight*0.05,
              ),
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
                Text(
                  "By continuing your confirm that you agree \n with out Term and Condition",
                  textAlign: TextAlign.center),
        ],
      ),
    ),
  ),
  );
  }
}