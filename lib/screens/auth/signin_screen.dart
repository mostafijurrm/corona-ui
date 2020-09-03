import 'package:corona_ui/route/route.dart';
import 'package:corona_ui/utils/my_color.dart';
import 'package:corona_ui/utils/my_size.dart';
import 'package:corona_ui/utils/my_string.dart';
import 'package:corona_ui/utils/my_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 280,
                child: Stack(
                  children: [
                    Positioned(
                      top: -400,
                      left: -160,
                      right: 30,
                      child: RotationTransition(
                        turns: AlwaysStoppedAnimation(3900 / 158),
                        child: Container(
                          height: 600,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              //borderRadius: BorderRadius.,
                              color: MyColor.primaryColor
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 120,
                        top: 140,
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: MyColor.primaryColor,
                                borderRadius: BorderRadius.all(Radius.circular(60))
                            ),
                          ),
                        ),
                    ),
                    Positioned(
                      right: 130,
                      top: 180,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: MyColor.primaryColor,
                              borderRadius: BorderRadius.all(Radius.circular(80))
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 190,
                        right: 140,
                        child: Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                                'assets/signin.png'
                            )
                        )
                    ),
                  ],
                ),
              ),
              signInData(context)
            ],
          ),
        ),
      ),
    );
  }
  signInData(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: Column(
        children: [
          Text(
            MyString.signIn,
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
                        hintText: MyString.usernameOrEmail,
                        hintStyle: MyStyle.defaultTextStyle
                    ),
                  ),
                  SizedBox(height: MySize.height),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: MyString.password,
                        hintStyle: MyStyle.defaultTextStyle
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Text(
                          MyString.forgetPassword,
                          style: GoogleFonts.poppins(
                              color: MyColor.skyBlue,
                              fontSize: MySize.defaultText
                          ),
                        ),
                        onTap: (){
                          Navigator.of(context).pushNamed(MyRoute.forgetPasswordScreen);
                        },
                      )
                    ],
                  ),
                  SizedBox(height: MySize.height,),
                  SizedBox(height: MySize.height,),
                  GestureDetector(
                    child: Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                          color: MyColor.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(40))
                      ),
                      child: Center(child: Text(
                        MyString.signInNow,
                        style: MyStyle.buttonTextStyle,
                      )
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).pushNamed(MyRoute.detailsScreen);
                    },
                  )
                ],
              )
          ),
          SizedBox(height: 25,),
          GestureDetector(
            child: Text(
              MyString.signUpAnAccount,
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
