import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors/colors.dart';

Image Image1() => Image.asset(
      "assets/images/loginscreen_image/image1.png",
      width: double.infinity,
      height: 64,
    );

Text signUpText() {
  return Text(
    "Sign Up",
    style: GoogleFonts.poppins(
        fontSize: 15,
        color: AppColor.whiteColor,
        fontWeight: FontWeight.w500),
  );
}

Text anAccountText() {
  return Text(
    "Don’t have an account?",
    style: GoogleFonts.poppins(
        fontSize: 13,
        color: AppColor.whiteColor,
        fontWeight: FontWeight.w500),
  );
}

Image facbookImage() {
  return Image.asset(
    "assets/images/loginscreen_image/facbook_logo.png",
    width: 48,
    height: 48,
  );
}

Image googleImage() {
  return Image.asset(
    "assets/images/loginscreen_image/google_logo.png",
    width: 48,
    height: 48,
  );
}

Image lineImage2() => Image.asset("assets/images/loginscreen_image/Rectangle_icon.png",width: 100,);

Text signinText() {
  return Text(
    "Or sign in with",
    style: GoogleFonts.outfit(
        fontSize: 14,
        color: AppColor.whiteColor,
        fontWeight: FontWeight.w500),
  );
}

Image lineImage1() => Image.asset("assets/images/loginscreen_image/Rectangle_icon.png",width: 105,);

Image vectorIconImage() {
  return Image.asset(
    "assets/images/loginscreen_image/Vector_icon.png",
    width: 65,
  );
}

Text loginText() {
  return Text(
    "Login",
    style: GoogleFonts.outfit(
        fontSize: 18,
        color: AppColor.whiteColor,
        fontWeight: FontWeight.w600),
  );
}

Text forgotPasswordText() {
  return Text("Forgot password ?",
      style: GoogleFonts.outfit(
          fontSize: 13,
          color: AppColor.whiteColor,
          fontWeight: FontWeight.w500));
}

TextFormField TextFormField2({required TextEditingController controller}) {
  return
    TextFormField(
    textAlign: TextAlign.start,
    keyboardType: TextInputType.text,
    style: GoogleFonts.outfit(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Colors.white),
    decoration: InputDecoration(
      fillColor: Colors.white,
      focusColor: Colors.white,

      suffixIcon: IconButton(
          icon: Icon(
            Icons.remove_red_eye,
            color: AppColor.greenColor,
          ),
          onPressed: () {}),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide:
          BorderSide(color: AppColor.whiteColor, width: .5)),
      hintText: "Password",
      hintStyle: TextStyle(color: AppColor.whiteColor),
      // labelText: "Password",
      // labelStyle: TextStyle(color: AppColor.whiteColor),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide:
          BorderSide(color: AppColor.whiteColor, width: .5)),
    ),
  );
}

TextFormField TextFormField1({required TextEditingController controller}) {
  return
    TextFormField(


    textAlign: TextAlign.start,
    keyboardType: TextInputType.name,
    style: GoogleFonts.outfit(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Colors.white),
    decoration: InputDecoration(
      // fillColor: Colors.white,
      hintText: "Username",
      hintStyle: TextStyle(color: AppColor.whiteColor),

      // labelText: "Username",
      // labelStyle: TextStyle(color: AppColor.whiteColor),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide:
          BorderSide(color: AppColor.whiteColor, width: .5)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide:
          BorderSide(color: AppColor.whiteColor, width: .5)),
    ),
  );
}
