import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:improve_scape/src/logout_screen/controller/logout_controller.dart';
import 'package:improve_scape/src/utils/colors/colors.dart';

import '../../../reuseable_widgets/custtom_container.dart';
import '../../../reuseable_widgets/custtom_textfield.dart';
import '../../home_screen/screen/home_screen.dart';
import '../../splashscreen/screen/splashscreen.dart';
import '../component/loguot_component.dart';

class LogOut_Screen extends StatelessWidget {
  var logoutController = Get.put(LogOut_Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.greenColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.blackColor,
        leading: InkWell(
          onTap: () {
            Get.to(() => Home_Screen());
          },
          child: arrow_back_ios_leading_Icon(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 640,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                child: GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                  },
                  child: Center(
                    child: Stack(children: [
                      Container(
                        width: 108,
                        height: 108,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(width: 4, color: Colors.black),
                        ),
                        child: CircleAvatar(
                            radius: 50,
                            child: CircleAvatar_assetsImage()),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 4, color: Colors.white),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.edit,
                              color: AppColor.greenColor,
                            ),
                          ))
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Edit_imageText(),
              SizedBox(
                height: 56,
              ),
              CusttomTextFormField(
                controller: logoutController.UserNameCotroller,
                COLORS: AppColor.darckgrayColor,
                WIDTH: MediaQuery.of(context).size.width,
                HEIGHT: MediaQuery.of(context).size.height * 0.1,
                hintText: "User name",
                HintStyle: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                prefixicon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              CusttomTextFormField(
                controller: logoutController.BirthDateCotroller,
                COLORS: AppColor.darckgrayColor,
                WIDTH: MediaQuery.of(context).size.width,
                HEIGHT: MediaQuery.of(context).size.height * 0.1,
                hintText: ("Date of birth"),
                HintStyle: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                prefixicon: Icon(
                  Icons.calendar_month,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              CusttomTextFormField(
                controller: logoutController.CountryCotroller,
                COLORS: AppColor.darckgrayColor,
                WIDTH: MediaQuery.of(context).size.width,
                HEIGHT: MediaQuery.of(context).size.height * 0.1,
                hintText: "Country",
                HintStyle: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                prefixicon: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    "assets/images/logout_screen_image/global_icon.png",
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => SplashScreen());
                },
                child: CusttomContainer(
                  WIDTH: MediaQuery.of(context).size.width,
                  HEIGHT: MediaQuery.of(context).size.height * 0.1,
                  COLORS: AppColor.darckgrayColor,
                  text: "LOG OUT",
                  STyl: GoogleFonts.montserrat(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Get.to(() => Home_Screen());
        },
        child: Container(
          width: double.infinity,
          height: 62,
          decoration: BoxDecoration(
            color: AppColor.greenColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Save_Text()
            ],
          ),
        ),
      ),
    );
  }


}
