import 'package:flutter/material.dart';
import 'package:shopapp/components/custom_bottom_nav_bar.dart';
import 'package:shopapp/enums.dart';
import 'package:shopapp/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}