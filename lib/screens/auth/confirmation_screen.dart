import 'package:corona_ui/utils/my_color.dart';
import 'package:corona_ui/utils/my_size.dart';
import 'package:corona_ui/utils/my_string.dart';
import 'package:corona_ui/utils/my_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sms_autofill/sms_autofill.dart';

class ConfirmationScreen extends StatefulWidget {
  @override
  _ConfirmationScreenState createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
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
                        top: 150,
                        left: 270,
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: MyColor.white,
                            borderRadius: BorderRadius.all(Radius.circular(60)),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: MyColor.secondaryColor,
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                            ),
                            child: Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                    'assets/confirmation_shield.png'
                                )
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ),
              confirmationData(context)
            ],
          ),
        ),
      ),
    );
  }
  confirmationData(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30.0),
      child: Column(
        children: [
          Text(
            MyString.confirmationCode,
            style: GoogleFonts.poppins(
                fontSize: MySize.largeText,
                fontWeight: FontWeight.bold
            ),
          ),
          Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                    child: PinFieldAutoFill(
                      decoration: UnderlineDecoration(
                          textStyle: TextStyle(fontSize: 20, color: Colors.black),
                        color: Colors.grey
                      ),
                      //currentCode: _code,
                      onCodeSubmitted: (code) {

                      },
                      codeLength: 5,
                      onCodeChanged: (code) {
                        if (code.length == 5) {
                          FocusScope.of(context).requestFocus(FocusNode());
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 50,),
                  Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                        color: MyColor.primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(40))
                    ),
                    child: Center(child: Text(
                      MyString.validate,
                      style: MyStyle.buttonTextStyle,
                    )
                    ),
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}
