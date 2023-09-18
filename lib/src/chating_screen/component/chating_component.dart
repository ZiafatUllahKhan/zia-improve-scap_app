
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors/colors.dart';

Text members_Text() {
  return Text(
    "10 members",
    style: GoogleFonts.outfit(
      fontWeight: FontWeight.w700,
      fontSize: 11,
      color: AppColor.greenColor,
    ),
  );
}

Text FitnessText() {
  return Text(
    "Fitness",
    style: GoogleFonts.outfit(
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: Colors.white,
    ),
  );
}