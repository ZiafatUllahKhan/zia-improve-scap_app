
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text Enter_Group_link_Text() {
  return Text(
    "Enter Group link:",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500),
  );
}

Text Group_password_Text() {
  return Text(
    "Group password:",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500),
  );
}

Text ListTile_title_Text_private_Group() {
  return Text(
    "Private group",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500),
  );
}

Text Description_of_chat_Text() {
  return Text(
    "Description of chat:",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500),
  );
}

Text appBarTitle_Join_Chat_Text() {
  return Text(
    "Join Chat ",
    style: GoogleFonts.outfit(
        fontSize: 26, color: Colors.white, fontWeight: FontWeight.w500),
  );
}

Icon keyboard_arrow_left_Icon() {
  return Icon(
    Icons.keyboard_arrow_left,
    color: Colors.white,
  );
}