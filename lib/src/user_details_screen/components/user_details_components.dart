
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/listview_builder.dart';

Text Grouplink_Text() {
  return Text(
    "Group link",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500),
  );
}

Image fitness_image_ABC_Icon() => Image.asset("assets/images/fitness_image/icon.png",width: 45,height: 27,);

Text GrouppasswordText() {
  return Text(
    "Group password",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500),
  );
}

Text Privategroup_Text() {
  return Text(
    "Private group",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500),
  );
}

Text ListTile_title1_Text(int index) {
  return Text(
    fitnessItemListModel[index].Text,
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w500),
  );
}

Text members_Text() {
  return Text(
    "10 members",
    style: GoogleFonts.outfit(
        color: Colors.greenAccent,
        fontSize: 13,
        fontWeight: FontWeight.w700),
  );
}

Text Fitness1_Text() {
  return Text(
    "Fitness",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w700),
  );
}

Image fitness_icon1_Image() {
  return Image.asset(
    "assets/images/chat_list_image/fitness_icon.png",
    height: 100,
    width: 100,
  );
}