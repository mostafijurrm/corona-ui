import 'package:corona_ui/utils/my_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class MyStyle {
  static var defaultTextStyle = GoogleFonts.poppins(
      fontSize: MySize.defaultText
  );

 static var buttonTextStyle = GoogleFonts.poppins(
    fontSize: MySize.defaultText,
  );

  static var headerTextStyle = GoogleFonts.poppins(
      fontSize: MySize.extraSmallText,
    fontWeight: FontWeight.w700
  );
  static var listTextStyle = GoogleFonts.poppins(
      fontSize: MySize.extraSmallText,
  );
}