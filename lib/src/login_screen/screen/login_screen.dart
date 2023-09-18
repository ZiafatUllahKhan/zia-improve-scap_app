import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:improve_scape/src/login_screen/controller/loginscreen_controller.dart';
import 'package:improve_scape/src/utils/colors/colors.dart';
import '../../home_screen/screen/home_screen.dart';
import '../component/loginscreen_component.dart';

class Login_Screen extends StatefulWidget {

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final loginController = Get.put(LoginController());
  var obscureText ;

  @override
  void initState() {
    super.initState();
    setState(() {
      obscureText = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Form(
            key: loginController.LoginControllerFormKey,
            child: Column(
              children: [
                SizedBox(
                  height: 165,
                ),
                Image1(),
                SizedBox(
                  height: 88,),
                  TextFormField(
                    controller: loginController.userNameController,
                    validator: (val){
                      return loginController.validate_userName(val);
                    },
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
                  ),
                SizedBox(
                  height: 17,
                ),
                TextFormField(
                  obscureText: obscureText,
                  controller: loginController.passwordController,
                 validator: (val) {
                    return loginController.validate_password(val);
                 },
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
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      icon: Icon(
                        obscureText
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color:AppColor.greenColor,
                      ),
                    ),
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
            ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    forgotPasswordText(),
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                InkWell(
                  onTap: () {
                    loginController.validateForm();
                  },
                  child: Container(
                    width: double.infinity,
                    height: 57,
                    decoration: BoxDecoration(
                      color: AppColor.greenColor,
                      borderRadius: BorderRadius.circular(80),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        loginText(),
                        SizedBox(width: 20,),
                        vectorIconImage(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    lineImage1(),
                    SizedBox(width: 12,),
                    signinText(),
                    SizedBox(width: 10,),
                    lineImage2(),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => Home_Screen());
                      },
                      child: googleImage(),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => Home_Screen());
                      },
                      child: facbookImage(),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    anAccountText(),
                    InkWell(
                      onTap: () {
                        Get.to(() => Home_Screen());
                      },
                      child: signUpText(),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
