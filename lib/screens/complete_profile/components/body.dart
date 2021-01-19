import 'package:flutter/material.dart';
import 'package:shopapp/components/custom_surffix_icon.dart';
import 'package:shopapp/components/default_button.dart';
import 'package:shopapp/components/form_error.dart';
import 'package:shopapp/constants.dart';
import 'package:shopapp/screens/complete_profile/complete_profile_screen.dart';
import 'package:shopapp/size_config.dart';
import '../../../constants.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: SingleChildScrollView(
                  child: Column(
            children: [
              Text('Complete Proflile',
              style: headingStyle,),
              Text(
                "Complete your detail or continue \n with social media",
                textAlign:  TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight*0.05,),
              CompleteProfileForm(),
              SizedBox(
              height: getProportionateScreenHeight(25),
            ),
            Text(
              "By continuing your confirm that you agree \n with our Term and Condition",
              textAlign: TextAlign.center,
            )
            ],
          ),
        ),
      )
    );
  }
}
