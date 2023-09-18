
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors/colors.dart';

Text Save_Text() {
  return Text(
    "Save",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w700),
  );
}

Text Edit_imageText() {
  return Text(
    "Edit image",
    style: GoogleFonts.montserrat(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w700),
  );
}

Image CircleAvatar_assetsImage() {
  return Image.asset(
    "assets/images/homescreen_image/image1.png",
    height: 100,
    width: 100,
  );
}

Icon arrow_back_ios_leading_Icon() {
  return Icon(
    Icons.arrow_back_ios,
    color: AppColor.whiteColor,
  );
}