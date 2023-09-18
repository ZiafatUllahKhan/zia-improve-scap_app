import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:improve_scape/src/utils/colors/colors.dart';

import '../../home_screen/screen/home_screen.dart';
import '../../login_screen/component/loginscreen_component.dart';
import '../component/hall_of_fame_component.dart';

class Hall_Of_Fame_Screen extends StatelessWidget {
  const Hall_Of_Fame_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Get.to(() => Home_Screen());
          },
          child: Icon(
            Icons.keyboard_arrow_left_sharp,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                hall_of_fame_Image1()
              ],
            ),
            Container(
              width: 276,
              height: 62.5,
              decoration: BoxDecoration(
                color: AppColor.lightColor,
              ),
              child: Column(
                children: [
                  DYLAN_OBRIEN_Text(),
                  AKA_FATHER_DELT_Text()
                ],
              ),
            ),
            SizedBox(height: 29,),
            Container(
              width: 276,
              height: 38,
              decoration: BoxDecoration(
                color: AppColor.lightColor,
              ),
              child: Column(
                children: [
                  BRYCE_FULTZ_Text(),
                ],
              ),
            ),
            SizedBox(height: 29,),
            Container(
              width: 276,
              height: 38,
              decoration: BoxDecoration(
                color: AppColor.lightColor,
              ),
              child: Column(
                children: [
                  COMING_SOON_Text(),
                ],
              ),
            ),
            SizedBox(height: 29,),
            Container(
              width: 276,
              height: 38,
              decoration: BoxDecoration(
                color: AppColor.lightColor,
              ),
              child: Column(
                children: [
                  COMING_SOON_4_Text(),
                ],
              ),
            ),
            SizedBox(height: 29,),
            Container(
              width: 276,
              height: 38,
              decoration: BoxDecoration(
                color: AppColor.lightColor,
              ),
              child: Column(
                children: [
                  COMING_SOONText(),
                ],
              ),
            ),
            SizedBox(height: 29,),
            Container(
              width: 276,
              height: 38,
              decoration: BoxDecoration(
                color: AppColor.lightColor,
              ),
              child: Column(
                children: [
                  COMINGSOONText(),
                ],
              ),
            ),
            SizedBox(height: 29,),
            Container(
              width: 276,
              height: 38,
              decoration: BoxDecoration(
                color: AppColor.lightColor,
              ),
              child: Column(
                children: [
                  COMINGSOON_Text(),
                ],
              ),
            ),
            SizedBox(height: 33,),
            Container(
              width: 276,
              height: 38,
              decoration: BoxDecoration(
                color: AppColor.lightColor,
              ),
              child: Column(
                children: [
                  Text_COMING_SOON(),
                ],
              ),
            ),
            SizedBox(height: 39,),
          ],
        ),
      ),
    );
  }


}
