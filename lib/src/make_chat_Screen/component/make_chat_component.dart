
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors/colors.dart';

Icon Trailing_copy_Icon() {
  return Icon(
    Icons.copy,
    color: Colors.white,
  );
}

Text ListTile_title_Grouplink_Text() {
  return Text(
    "Group link",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500),
  );
}

Image ListTile_trailing_fitness_Image() {
  return Image.asset(
    "assets/images/fitness_image/icon.png",
    width: 45,
    height: 27,
  );
}

Text ListTile_titel_Group_password_Text() {
  return Text(
    "Group password",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500),
  );
}

Text ListTile_title_PrivategroupText() {
  return Text(
    "Private group",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500),
  );
}

Text Member_Amount_Text() {
  return Text(
    "Member Amount:",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500),
  );
}

Text Text_Description_of_chat() {
  return Text(
    "Description of chat:",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500),
  );
}

Text Add_a_photoText1() {
  return Text(
    "Add a photo",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w700),
  );
}

Icon edit1_Icon() {
  return Icon(
    Icons.edit,
    color: AppColor.greenColor,
  );
}

Image circular_image() {
  return Image.asset(
    "assets/images/make_chat_image/circular_image.png",
    height: 100,
    width: 100,
  );
}

Text Enter_Name_Text() {
  return Text(
    "Enter Name",
    style: GoogleFonts.outfit(
        fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700),
  );
}

Icon keyboard_arrow_left_LeadingIcon() {
  return Icon(
    Icons.keyboard_arrow_left,
    color: Colors.white,
  );
}