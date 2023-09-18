
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text Make_sure_you_read_a_chapter_Text() {
  return Text(
    "Make sure you read a chapter",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400),
  );
}

Icon calendar_month_Icon() => Icon(Icons.calendar_month_outlined, color: Colors.white,);

Text Dont_forget_to_do_your_daily_journaling_Text() {
  return Text(
    "Dont forget to do your daily journaling",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400),
  );
}

Text Dont_forget_to_go_for_a_run_Text() {
  return Text(
    "Dont forget to go for a run",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400),
  );
}

Text AppBar_title_ReminderText() {
  return Text(
    "Reminder",
    style:
    GoogleFonts.outfit(fontSize: 20.07, fontWeight: FontWeight.w500),
  );
}