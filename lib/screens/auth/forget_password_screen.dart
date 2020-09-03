import 'package:corona_ui/route/route.dart';
import 'package:corona_ui/screens/auth/confirmation_screen.dart';
import 'package:corona_ui/utils/my_color.dart';
import 'package:corona_ui/utils/my_size.dart';
import 'package:corona_ui/utils/my_string.dart';
import 'package:corona_ui/utils/my_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordScreen extends StatefulWidget {
  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 380,
                child: Stack(
                  children: [
                    Positioned(
                      top: -250,
                      child: Container(
                        height: MediaQuery.of(context).size.height - 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(200), bottomLeft: Radius.circular(200)),
                            color: MyColor.primaryColor
                        ),
                      ),
                    ),
                    Positioned(
                      top: 130,
                        left: 270,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: MyColor.white,
                            borderRadius: BorderRadius.all(Radius.circular(60)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: MyColor.secondaryColor,
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                              ),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                      'assets/forget_password_lock.png'
                                  )
                              ),
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ),
              forgetData(context)
            ],
          ),
        ),
      ),
    );
  }
  forgetData(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: Column(
        children: [
          Text(
            MyString.forgetPassword,
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
                        hintText: MyString.username,
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
                  SizedBox(height: 30,),
                  GestureDetector(
                    child: Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                          color: MyColor.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(40))
                      ),
                      child: Center(child: Text(
                        MyString.submitNow,
                        style: MyStyle.buttonTextStyle,
                      )
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ConfirmationScreen()));
                    },
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}
