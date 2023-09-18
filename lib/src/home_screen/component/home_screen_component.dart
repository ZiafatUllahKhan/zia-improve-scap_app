
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors/colors.dart';

Icon Add_box_sharp_Icon() {
  return Icon(
    Icons.add_box_sharp,
    size: 37,
    color: AppColor.whiteColor,
  );
}

Image vector_Icon_Image() {
  return Image.asset(
    "assets/images/loginscreen_image/Vector_icon.png",
    width: 65,
    color: AppColor.whiteColor,
  );
}

Text Add_Your_Logs_Text() {
  return Text(
    "Add Your Logs",
    style: GoogleFonts.outfit(
        color: AppColor.whiteColor,
        fontSize: 18,
        fontWeight: FontWeight.w600),
  );
}

Text Today_I_read_a_book_Text() {
  return Text(
    "Today I read a book",
    style: GoogleFonts.outfit(
        color: AppColor.whiteColor,
        fontSize: 24,
        fontWeight: FontWeight.w500),
  );
}

// Image assets_Image1() {
//   return Image.asset(
//     "assets/images/homescreen_image/image3.png",
//     width: 220,
//     height: 209,
//   );
// }

class HomeScreenComponent{
  buildContainer({required String text,required Color color,required final onTap}) {
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

Text Edit_Text() {
  return Text(
    "Edit",
    style: GoogleFonts.outfit(
        color: AppColor.whiteColor,
        fontSize: 16,
        fontWeight: FontWeight.w400),
  );
}

Icon edit_Icon() {
  return Icon(
    Icons.mode_edit,
    size: 10,
    color: AppColor.whiteColor,
  );
}

Text DailyGoals_Text() {
  return Text(
    "Daily Goals",
    style: GoogleFonts.outfit(
        color: AppColor.whiteColor,
        fontSize: 16,
        fontWeight: FontWeight.w400),
  );
}

Image appBar_actions_Image() {
  return Image.asset(
    "assets/images/homescreen_image/image1.png",
    width: 32,
    height: 32,
  );
}

Text appBar_titie_Text() {
  return Text(
    "Improvescape",
    style: GoogleFonts.outfit(
        fontSize: 20.07, fontWeight: FontWeight.w500),
  );
}

Image appBAr_Leading_Image() {
  return Image.asset(
    "assets/images/homescreen_image/diamond_icon.png",
    width: 21,
    height: 28,
  );
}