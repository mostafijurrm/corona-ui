import 'package:corona_ui/route/route.dart';
import 'package:corona_ui/screens/auth/confirmation_screen.dart';
import 'package:corona_ui/screens/auth/forget_password_screen.dart';
import 'package:corona_ui/screens/auth/signin_screen.dart';
import 'package:corona_ui/screens/auth/signup_screen.dart';
import 'package:corona_ui/screens/details_screen.dart';
import 'package:corona_ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoute.splashScreen,
      routes: {
        MyRoute.splashScreen : (_) => SplashScreen(),
        MyRoute.signUpScreen : (_) => SignUpScreen(),
        MyRoute.signInScreen : (_) => SignInScreen(),
        MyRoute.forgetPasswordScreen : (_) => ForgetPasswordScreen(),
        MyRoute.confirmationCodeScreen : (_) => ConfirmationScreen(),
        MyRoute.detailsScreen : (_) => DetailsScreen(),
      },
    );
  }
}
