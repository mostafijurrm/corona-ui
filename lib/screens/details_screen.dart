import 'package:corona_ui/utils/my_color.dart';
import 'package:corona_ui/utils/my_size.dart';
import 'package:corona_ui/utils/my_string.dart';
import 'package:corona_ui/utils/my_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                  'assets/details_dr_image.png',
                height: MediaQuery.of(context).size.height - 450,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Image.asset(
                  'assets/details_map.png',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                          MyString.confirmed,
                        style: MyStyle.defaultTextStyle,
                      ),
                      Text(
                        '2,658,062',
                        style: GoogleFonts.poppins(
                            fontSize: MySize.largeText
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                          MyString.recovered,
                        style: MyStyle.defaultTextStyle,
                      ),
                      Text(
                        '1,458,020',
                        style: GoogleFonts.poppins(
                            fontSize: MySize.largeText
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                          MyString.deaths,
                        style: MyStyle.defaultTextStyle,
                      ),
                      Text(
                        '58,062',
                        style: GoogleFonts.poppins(
                            fontSize: MySize.largeText
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(
                        color: MyColor.primaryColor
                    ),
                    child: Center(
                        child: Text(
                            '83%',
                          style: GoogleFonts.poppins(
                            fontSize: MySize.extraLargeText,
                            color: MyColor.white
                          ),
                        )
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(
                        color: MyColor.primaryColor
                    ),
                    child: Center(
                        child: Text(
                            '83%',
                          style: GoogleFonts.poppins(
                            fontSize: MySize.extraLargeText,
                            color: MyColor.white
                          ),
                        )
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(
                        color: MyColor.primaryColor
                    ),
                    child: Center(
                        child: Text(
                            '83%',
                          style: GoogleFonts.poppins(
                            fontSize: MySize.extraLargeText,
                            color: MyColor.white
                          ),
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Expanded(
                    flex: 2,
                      child: Text(
                          MyString.location,
                        style: MyStyle.headerTextStyle,
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        MyString.confirmed,
                        style: MyStyle.headerTextStyle,
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        MyString.recovered,
                        style: MyStyle.headerTextStyle,
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        MyString.deaths,
                        style: MyStyle.headerTextStyle,
                      )
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Expanded(
                    flex: 2,
                      child: Text(
                          MyString.china,
                        style: MyStyle.listTextStyle,
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        '536',
                        style: MyStyle.listTextStyle,
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        '233',
                        style: MyStyle.listTextStyle,
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        '120',
                        style: MyStyle.listTextStyle,
                      )
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Expanded(
                      flex: 2,
                      child: Text(
                        MyString.unitedStates,
                        style: MyStyle.listTextStyle,
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        '536',
                        style: MyStyle.listTextStyle,
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        '233',
                        style: MyStyle.listTextStyle,
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        '120',
                        style: MyStyle.listTextStyle,
                      )
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Expanded(
                      flex: 2,
                      child: Text(
                        MyString.france,
                        style: MyStyle.listTextStyle,
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        '536',
                        style: MyStyle.listTextStyle,
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        '233',
                        style: MyStyle.listTextStyle,
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        '120',
                        style: MyStyle.listTextStyle,
                      )
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Expanded(
                      flex: 2,
                      child: Text(
                        MyString.spain,
                        style: MyStyle.listTextStyle,
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        '536',
                        style: MyStyle.listTextStyle,
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        '233',
                        style: MyStyle.listTextStyle,
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Text(
                        '120',
                        style: MyStyle.listTextStyle,
                      )
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
