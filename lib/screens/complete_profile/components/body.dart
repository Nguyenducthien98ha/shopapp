import 'package:flutter/material.dart';
import 'package:shopapp/components/custom_surffix_icon.dart';
import 'package:shopapp/constants.dart';
import 'package:shopapp/screens/complete_profile/complete_profile_screen.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text('Complete Proflile',
          style: headingStyle,),
          Text(
            "Complete your detail or continue \n with social media",
            textAlign:  TextAlign.center,
          ),
        ],
      )
    );
  }
}
