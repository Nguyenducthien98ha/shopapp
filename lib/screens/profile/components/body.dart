import 'package:flutter/material.dart';
import 'package:shopapp/screens/profile/components/profile_menu.dart';
import 'package:shopapp/screens/profile/components/profile_pic.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 10),
        ProfileMenu(
          icon: "assets/icons/User Icon.svg",
          text: "My Account",
          press: (){},
        ),
        ProfileMenu(
          icon: "assets/icons/Bell.svg",
          text: "Notification",
          press: (){},
        ),
        ProfileMenu(
          icon: "assets/icons/Question mark.svg",
          text: "Settings",
          press: (){},
        ),
        ProfileMenu(
          icon: "assets/icons/Question mark.svg",
          text: "Help Center",
          press: (){},
        ),
        ProfileMenu(
          icon: "assets/icons/Log out.svg",
          text: "Log Out",
          press: (){},
        ),
      ],
    );
  }
}