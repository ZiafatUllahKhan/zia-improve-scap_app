// import 'dart:developer';
//
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// import '../../home_screen/screen/home_screen.dart';
//
// class LoginController extends GetxController{
//   final GlobalKey<FormState>Login_ScreenFormKey=GlobalKey<FormState>();
//   var UserNameCotroller = TextEditingController();
//   var PassWordCotroller = TextEditingController();
//
//   validateForm() async {
//     if (!Login_ScreenFormKey.currentState!.validate()) {
//       log("Form Not Valid");
//     } else {
//       Get.to(Home_Screen());
//     }
//   }
//   String? validate_userName(val) {
//     if (val.isEmpty) {
//       return "Please Enter name";
//     }
//     else if (val.length < 3)
//     {
//       return "please Enter minimum 3 character";
//     } else
//       return null;
//   }
//   String? validate_password(val) {
//     if (val.isEmpty) {
//       return "Please Enter your password";
//     } else if (val.length < 6) {
//       return "please Enter minimum 6 character";
//     } else
//       return null;
//   }
// }

import 'dart:developer';
import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:improve_scape/src/home_screen/screen/home_screen.dart';

class LoginController extends GetxController{

  final GlobalKey<FormState> LoginControllerFormKey =GlobalKey<FormState>();

  TextEditingController userNameController=TextEditingController();
  // TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  // TextEditingController conformPasswordController=TextEditingController();
  // bool obscureText  = false;

  validateForm() async {
    if (!LoginControllerFormKey.currentState!.validate()) {
      log("Form Not Valid");
    } else {
      Get.to(Home_Screen());
    }
  }
  // String? validate_email(val) {
  //   bool emailValid =
  //   RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(val);
  //   if (val.isEmpty) {
  //     return "Please Enter your email";
  //   } else if (emailValid == false) {
  //     return "email is not valid";
  //   } else
  //     return null;
  // }
  String? validate_password(val) {
    if (val.isEmpty) {
      return "Please Enter your password";
    } else if (val.length < 6) {
      return "please Enter minimum 6 character";
    } else
      return null;
  }
  // String? validate_cpassword(val) {
  //   if (val.isEmpty) {
  //     return "Please Enter your password";
  //   } else if (passwordController.value.text != conformPasswordController.value.text){
  //     return "password does not match";
  //   } else
  //     return null;
  // }
  String? validate_userName(val) {
    if (val.isEmpty) {
      return "Please Enter name";
    }
    else if (val.length < 3)
    {
      return "please Enter minimum 3 character";
    } else
      return null;
  }


}