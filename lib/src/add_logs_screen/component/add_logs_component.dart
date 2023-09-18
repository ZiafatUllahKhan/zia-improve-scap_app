import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors/colors.dart';

class AddLogsScreenComponent {
  buildContainer({required String text,required Color color,required final onTap}){
      return
        InkWell(
          onTap: onTap,
          child: Container(
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left:20,top: 17),
              child: Text(text,style: GoogleFonts.outfit(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: AppColor.whiteColor,
              ),),
            ),
          ),
        );
  }
}

Text GoalCompletedText() {
  return Text(
    "Goal completed",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w400),
  );
}

TextFormField EnterCaptionTextFormField() {
  return TextFormField(
    maxLines: 10,
    style: GoogleFonts.outfit(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Colors.white),
    decoration: InputDecoration(
      fillColor: AppColor.darckgrayColor,
      filled: true,
      hintText: "Enter a caption",
      hintStyle: GoogleFonts.outfit(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Colors.white),
      suffix: Text(
        "  Limit 0/255",
        style: GoogleFonts.aBeeZee(
            color: Colors.white,
            fontSize: 8,
            fontWeight: FontWeight.w400),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );
}

Text addPhotoText() {
  return Text(
    "Add a Photo",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w400),
  );
}

Text titleText() {
  return Text(
    "Add a Log",
    style: GoogleFonts.outfit(
        color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w800),
  );
}