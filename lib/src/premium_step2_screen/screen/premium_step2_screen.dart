
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:improve_scape/src/premium_step1_screen/screen/premium_step1_screen.dart';

import '../../home_screen/screen/home_screen.dart';
import '../../utils/colors/colors.dart';
import '../component/premium_step2_component.dart';

class Premium_Step2 extends StatelessWidget {
  const Premium_Step2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: AppColor.blackColor,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Get.to(() => Home_Screen());
          },
          child: leading_arrow_back_ios_Icon1(),
        ),
        centerTitle: true,
        title: title_premium_appBar_Image1(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 35, right: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.rotate(
                      angle: -15.53 * pi / 180,
                      child: premium_image_Icon2()),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [
                          Color(0xffFFC700),
                          Color(0xffFFDB5E),
                          Color(0xffFFFFFF),
                          Color(0xffFFFFFF),
                        ],
                        stops: [0.0, 0.3, 1.0, 1.5],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ).createShader(bounds);
                    },
                    child: PREMIUM2_Text(),
                  ),
                  Transform.rotate(
                      angle: -15.53 * pi / 180,
                      child: premium_image_Icon2()),
                ],
              ),
              Container(
                width: double.infinity,
                height: 530,
                decoration: BoxDecoration(
                    color: AppColor.darckgrayColor,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => PremiumStep1());
                          },
                          child: premiumText2(),
                        ),
                        VerticalDivider(
                          color: AppColor.whiteColor,
                          thickness: 5,
                          width: 10,
                          indent: 10,
                          endIndent: 10,
                        ),
                        VIOS_Text1(),
                      ],
                    ),
                    SizedBox(height: 71,),

                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TULL_SELF_IMPROVEMENT_COURSEText(),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

