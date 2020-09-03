import 'package:corona_ui/route/route.dart';
import 'package:corona_ui/utils/my_color.dart';
import 'package:corona_ui/utils/my_size.dart';
import 'package:corona_ui/utils/my_string.dart';
import 'package:corona_ui/utils/my_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColor.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 380,
                child: Stack(
                  children: [
                    Positioned(
                      top: -140,
                      left: -50,
                      child: Container(
                        height: MediaQuery.of(context).size.height - 300,
                        width: MediaQuery.of(context).size.width - 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(900)),
                            color: MyColor.primaryColor
                        ),
                      ),
                    ),
                    Positioned(
                      left: 70,
                        child: Align(
                          alignment: Alignment.topCenter,
                            child: Image.asset(
                                'assets/signup.png'
                            )
                        )
                    ),
                    Positioned(
                      top: 200,
                        right: 55,
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: MyColor.primaryColor,
                                borderRadius: BorderRadius.all(Radius.circular(60))
                            ),
                          ),
                        ),
                    ),
                  ],
                ),
              ),
              signUpData(context)
            ],
          ),
        ),
      ),
    );
  }

  signUpData(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: Column(
        children: [
          Text(
              MyString.signUp,
            style: GoogleFonts.poppins(
              fontSize: MySize.largeText,
              fontWeight: FontWeight.bold
            ),
          ),
          Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: MyString.name,
                      hintStyle: MyStyle.defaultTextStyle
                    ),
                  ),
                  SizedBox(height: MySize.height),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: MyString.email,
                        hintStyle: MyStyle.defaultTextStyle
                    ),
                  ),
                  SizedBox(height: MySize.height,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: MyString.password,
                        hintStyle: MyStyle.defaultTextStyle
                    ),
                  ),
                  SizedBox(height: MySize.height,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: MyString.rePassword,
                        hintStyle: MyStyle.defaultTextStyle
                    ),
                  ),
                  SizedBox(height: MySize.height,),
                  SizedBox(height: MySize.height,),
                  Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                      color: MyColor.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(40))
                    ),
                    child: Center(child: Text(
                        MyString.signUpNow,
                      style: MyStyle.buttonTextStyle,
                    )
                    ),
                  )
                ],
              )
          ),
          SizedBox(height: 25,),
          GestureDetector(
            child: Text(
                MyString.loginAnAccount,
              style: GoogleFonts.poppins(
                color: MyColor.skyBlue,
                fontSize: MySize.defaultText
              ),
            ),
            onTap: (){
              Navigator.of(context).pushNamed(MyRoute.signInScreen);
            },
          )
        ],
      ),
    );
  }
}
