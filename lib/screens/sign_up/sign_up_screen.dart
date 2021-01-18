import 'package:flutter/material.dart';
import 'package:shopapp/screens/sign_up/components/body.dart';


class SignUpscreen extends StatelessWidget {
  static String routeName = "/sign_up";
  const SignUpscreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}