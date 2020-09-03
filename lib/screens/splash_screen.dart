import 'dart:async';

import 'package:corona_ui/route/route.dart';
import 'package:corona_ui/utils/my_color.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacementNamed(MyRoute.signUpScreen));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.primaryColor,
      body: Center(
        child: Container(
          height: 130,
          width: 140,
          //color: Colors.white,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: MyColor.black,
                    borderRadius: BorderRadius.all(Radius.circular(40))
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: MyColor.black,
                    borderRadius: BorderRadius.all(Radius.circular(60))
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
