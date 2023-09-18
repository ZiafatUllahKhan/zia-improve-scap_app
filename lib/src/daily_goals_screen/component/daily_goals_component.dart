
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/listview_builder.dart';

Text ListTile_tralling_Text(int index) {
  return Text(
    itemtDataList[index].tralling,
    style: GoogleFonts.abhayaLibre(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500),
  );
}

Text ListTile_Subtitle_Text(int index) {
  return Text(
    itemtDataList[index].subTitle,
    style: GoogleFonts.abhayaLibre(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500),
  );
}

Text ListTile_title_Text(int index) {
  return Text(
    itemtDataList[index].Title,
    style: GoogleFonts.abhayaLibre(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500),
  );
}

Image actions_Image(Size size) {
  return Image.asset(
    "assets/images/homescreen_image/image1.png",
    width: size.width * 0.24,
    height: size.height * 0.24,
  );
}

Text title_Text() {
  return Text(
    "Serach",
    style:
    GoogleFonts.outfit(fontSize: 20.07, fontWeight: FontWeight.w500),
  );
}