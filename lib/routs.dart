import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopapp/screens/complete_profile/complete_profile_screen.dart';
import 'package:shopapp/screens/forgot_password/forgot_password_screen.dart';
import 'package:shopapp/screens/home/home_screen.dart';
import 'package:shopapp/screens/login_success/login_success_screen.dart';
import 'package:shopapp/screens/otp/otp_screen.dart';
import 'package:shopapp/screens/sign_in/sign_in_screen.dart';
import 'package:shopapp/screens/sign_up/sign_up_screen.dart';
import 'package:shopapp/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpscreen.routeName: (context) => SignUpscreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
