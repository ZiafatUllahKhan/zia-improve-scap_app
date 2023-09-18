import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/listview_builder.dart';

Text tralling_Text(int index) {
  return Text(
    itemtDataList[index].tralling,
    style: GoogleFonts.abhayaLibre(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500),
  );
}

Text ListTile_SubTitle_Text(int index) {
  return Text(
    itemtDataList[index].subTitle,
    style: GoogleFonts.abhayaLibre(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500),
  );
}

Text ListTile_Title_Text(int index) {
  return Text(
    itemtDataList[index].Title,
    style: GoogleFonts.abhayaLibre(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500),
  );
}