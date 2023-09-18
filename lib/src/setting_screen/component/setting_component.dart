import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text HallofFame_Text() {
  return Text(
    "Hall of Fame",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400),
  );
}

Icon star_Icon() => Icon(Icons.star_half_outlined,color: Colors.white,);

Text Set_Reminder_Text() {
  return Text(
    "Set Reminder",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400),
  );
}

Icon timer_Icon() => Icon(Icons.timer,color: Colors.white,);

Text Private_Text() {
  return Text(
    "Private",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400),
  );
}

Icon lock_Icon() => Icon(Icons.lock_open_outlined,color: Colors.white,);

Text Notification_Text() {
  return Text(
    "Notification",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400),
  );
}

Icon Notification_Icon() => Icon(Icons.notifications_active_outlined,color: Colors.white,);

Icon arrow_forward_ios_Icon() => Icon(Icons.arrow_forward_ios, color: Colors.white,);

Text Contact_us_Text() {
  return Text(
    "Contact us",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400),
  );
}

Icon Contact_Icon() => Icon(Icons.email_outlined,color: Colors.white,);

Text Profile_Text() {
  return Text(
    "Profile",
    style: GoogleFonts.outfit(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400),
  );
}

Icon Profile_Icon() => Icon(Icons.person,color: Colors.white,);

Image SettingScreen_circular_Image() {
  return Image.asset(
    "assets/images/homescreen_image/image1.png",
    width: 32,
    height: 32,
  );
}

Text AppBar_title_SettingsText() {
  return Text(
    "Settings",
    style:
    GoogleFonts.outfit(fontSize: 20.07, fontWeight: FontWeight.w500),
  );
}