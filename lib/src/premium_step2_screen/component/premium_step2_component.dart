
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text TULL_SELF_IMPROVEMENT_COURSEText() {
  return Text(
    "FULL SELF \nIMPROVEMENT COURSE \nCOMING SOON!!!",
    style: GoogleFonts.lexend(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w800),
  );
}

Text VIOS_Text1() {
  return Text(
    "VIOS",
    style: GoogleFonts.aBeeZee(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w400),
  );
}

Text premiumText2() {
  return Text(
    "premium",
    style: GoogleFonts.aBeeZee(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w400),
  );
}

Text PREMIUM2_Text() {
  return Text(
    "PREMIUM",
    style: GoogleFonts.lexend(
        color: Colors.amberAccent,
        fontSize: 26,
        fontWeight: FontWeight.w800),
  );
}

Image premium_image_Icon2() {
  return Image.asset(
    "assets/images/premium_image/icon1.png",
    width: 30,
    height: 25,
  );
}

Icon leading_arrow_back_ios_Icon1() {
  return Icon(
    Icons.arrow_back_ios,
    color: Colors.white,
  );
}

Image title_premium_appBar_Image1() => Image.asset("assets/images/premium_image/appbar_image.png");