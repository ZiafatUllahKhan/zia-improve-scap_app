import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors/colors.dart';

Text BUY_NOW_MONTH_Text() {
  return Text(
    "BUY NOW \n2.99 A MONTH",
    style: GoogleFonts.lexend(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w800),
  );
}
Text MORE_FEATURES_COMING_SOON_Text() {
  return Text(
    "MORE FEATURES \nCOMING SOON!!!",
    style: GoogleFonts.lexend(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w800),
  );
}

Text Filter_for_premium_only_chats_Text() {
  return Text(
    "Filter for premium only chats",
    style: GoogleFonts.abhayaLibre(
      fontSize: 12,
      color: AppColor.whiteColor,
      fontWeight: FontWeight.w500,
    ),
  );
}

Text Premium_badge_next_to_name_Text() {
  return Text(
    "Premium badge next to name",
    style: GoogleFonts.abhayaLibre(
      fontSize: 12,
      color: AppColor.whiteColor,
      fontWeight: FontWeight.w500,
    ),
  );
}

Text Change_app_ico_Text() {
  return Text(
    "Change app icon",
    style: GoogleFonts.abhayaLibre(
      fontSize: 12,
      color: AppColor.whiteColor,
      fontWeight: FontWeight.w500,
    ),
  );
}

Text No_member_limit_Text() {
  return Text(
    "No member limit",
    style: GoogleFonts.abhayaLibre(
      fontSize: 12,
      color: AppColor.whiteColor,
      fontWeight: FontWeight.w500,
    ),
  );
}

Text Unlimed_chats_Text() {
  return Text(
    "Unlimed chats",
    style: GoogleFonts.abhayaLibre(
      fontSize: 12,
      color: AppColor.whiteColor,
      fontWeight: FontWeight.w500,
    ),
  );
}

Text No_addsText() {
  return Text(
    "No adds",
    style: GoogleFonts.abhayaLibre(
      fontSize: 12,
      color: AppColor.whiteColor,
      fontWeight: FontWeight.w500,
    ),
  );
}

Text VIOSText() {
  return Text(
    "VIOS",
    style: GoogleFonts.aBeeZee(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w400),
  );
}

Text premiumText1() {
  return Text(
    "premium",
    style: GoogleFonts.aBeeZee(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w400),
  );
}

Text PREMIUM_Text() {
  return Text(
    "PREMIUM",
    style: GoogleFonts.lexend(
        color: Colors.amberAccent,
        fontSize: 26,
        fontWeight: FontWeight.w800),
  );
}

Image premium_image_Icon1() {
  return Image.asset(
    "assets/images/premium_image/icon1.png",
    width: 30,
    height: 25,
  );
}

Image title_premium_appbar_Image() =>
    Image.asset("assets/images/premium_image/appbar_image.png");

Icon Icons_arrow_back_ios_Icon() {
  return Icon(
    Icons.arrow_back_ios,
    color: Colors.white,
  );
}
