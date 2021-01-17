import 'package:flutter/material.dart';
import 'package:shopapp/constants.dart';
import 'package:shopapp/routs.dart';
import 'package:shopapp/screens/splash/splash_screen.dart';
import 'package:shopapp/theme.dart';
import 'package:shopapp/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}