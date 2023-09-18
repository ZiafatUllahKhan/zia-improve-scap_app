
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/listview_builder.dart';
import '../../utils/colors/colors.dart';

Text ListTile_trailing_Text(int index) {
  return Text(
    itemVertDataList[index].Text1,
    style: GoogleFonts.abhayaLibre(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500),
  );
}

Text ListTile_titleText(int index) {
  return Text(
    itemVertDataList[index].Text,
    style: GoogleFonts.abhayaLibre(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500),
  );
}

Image ListTile_leading_assetsImage(int index) {
  return Image.asset(
    itemVertDataList[index].image,
  );
}

Image leadership_screen_Icon3( size) {
  return Image.asset(
    "assets/images/leadership_screen_image/icon_3.png",
    width: size.width * 0.12,
    height: size.height * 0.15,
  );
}

Text Logs_14_Text() {
  return Text(
    "14 Logs",
    style: GoogleFonts.adventPro(
      color: AppColor.whiteColor,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
  );
}

Text Alish_Text() {
  return Text(
    "Alish",
    style: GoogleFonts.inter(
        color: AppColor.whiteColor,
        fontSize: 16,
        fontWeight: FontWeight.w900),
  );
}

Image leadership_screen_Image3( size) {
  return Image.asset(
    "assets/images/leadership_screen_image/image3.png",
    width: size.width * 0.24,
    height: size.height * 0.12,
    fit: BoxFit.fill,
  );
}

Image leadership_screen_Icon1( size) {
  return Image.asset(
    "assets/images/leadership_screen_image/icon_1.png",
    width: size.width * 0.16,
    height: size.height * 0.26,
  );
}

Text Logs_36_Text() {
  return Text(
    "36 Logs",
    style: GoogleFonts.adventPro(
      color: AppColor.whiteColor,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
  );
}

Text Maria_Text() {
  return Text(
    "Maria",
    style: GoogleFonts.inter(
        color: AppColor.whiteColor,
        fontSize: 16,
        fontWeight: FontWeight.w900),
  );
}

Image leadership_screen_Image2( size) {
  return Image.asset(
    "assets/images/leadership_screen_image/image2.png",
    width: size.width * 0.33,
    height: size.height * 0.16,
    fit: BoxFit.fill,
  );
}

Image leadership_screen_icon2( size) {
  return Image.asset(
    "assets/images/leadership_screen_image/icon_2.png",
    width: size.width * 0.18,
    height: size.height * 0.20,
  );
}

Text Logs_22_Text() {
  return Text(
    "22 Logs",
    style: GoogleFonts.adventPro(
      color: AppColor.whiteColor,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
  );
}

Text Esther_Text() {
  return Text(
    "Esther",
    style: GoogleFonts.inter(
        color: AppColor.whiteColor,
        fontSize: 16,
        fontWeight: FontWeight.w900),
  );
}

Image leadership_screen_Image1( size) {
  return Image.asset(
    "assets/images/leadership_screen_image/image1.png",
    width: size.width * 0.28,
    height: size.height * 0.14,
    fit: BoxFit.fill,
  );
}

Image Leaderboard_Action_Image() {
  return Image.asset(
    "assets/images/homescreen_image/image1.png",
    width: 32,
    height: 32,
  );
}

Text Leaderboard_title_Text() {
  return Text(
    "Leaderboard",
    style:
    GoogleFonts.outfit(fontSize: 20.07, fontWeight: FontWeight.w500),
  );
}