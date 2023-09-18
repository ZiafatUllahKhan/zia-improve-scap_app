import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:improve_scape/src/utils/colors/colors.dart';

import '../../home_screen/screen/home_screen.dart';
import '../../premium_step2_screen/screen/premium_step2_screen.dart';
import '../component/premium_step1_component.dart';

class PremiumStep1 extends StatefulWidget {
  const PremiumStep1({super.key});

  @override
  State<PremiumStep1> createState() => _PremiumStep1State();
}

class _PremiumStep1State extends State<PremiumStep1> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: AppColor.blackColor,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Get.to(()=>Home_Screen());
          },
          child: Icons_arrow_back_ios_Icon(),
        ),
        centerTitle: true,
        title: title_premium_appbar_Image(),
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
                      child: premium_image_Icon1()),
                  // Image.asset("assets/images/premium_image/text_icon.png",width: 65,height: 200,),
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
                    child: PREMIUM_Text(),
                  ),
                  Transform.rotate(
                      angle: -15.53 * pi / 180,
                      child: premium_image_Icon1()),
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
                    SizedBox(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          premiumText1(),
                          VerticalDivider(
                            color: AppColor.whiteColor,
                            thickness: 2,
                            width: 10,
                            indent: 10,
                            endIndent: 10,
                          ),
                          InkWell(
                            onTap: (){
                              Get.to(()=>Premium_Step2 ());
                            },
                            child: VIOSText(),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            side: BorderSide(
                                width: 4.0,
                                style: BorderStyle.solid,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: AppColor.lightdarckColor),
                            focusColor: AppColor.darckgrayColor,
                            checkColor: AppColor.greenColor,
                            activeColor: AppColor.darckgrayColor,
                            value: isChecked1,
                            onChanged: (val) {
                              setState(() {
                                isChecked1 = val!;
                              });
                            }),
                        No_addsText()
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            side: BorderSide(
                                width: 4.0,
                                style: BorderStyle.solid,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: AppColor.lightdarckColor),
                            focusColor: AppColor.darckgrayColor,
                            checkColor: AppColor.greenColor,
                            activeColor: AppColor.darckgrayColor,
                            value: isChecked2,
                            onChanged: (val) {
                              setState(() {
                                isChecked2 = val!;
                              });
                            }),
                        Unlimed_chats_Text()
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            side: BorderSide(
                                width: 4.0,
                                style: BorderStyle.solid,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: AppColor.lightdarckColor),
                            focusColor: AppColor.darckgrayColor,
                            checkColor: AppColor.greenColor,
                            activeColor: AppColor.darckgrayColor,
                            value: isChecked3,
                            onChanged: (val) {
                              setState(() {
                                isChecked3 = val!;
                              });
                            }),
                        No_member_limit_Text()
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            side: BorderSide(
                                width: 4.0,
                                style: BorderStyle.solid,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: AppColor.lightdarckColor),
                            focusColor: AppColor.darckgrayColor,
                            checkColor: AppColor.greenColor,
                            activeColor: AppColor.darckgrayColor,
                            value: isChecked4,
                            onChanged: (val) {
                              setState(() {
                                isChecked4 = val!;
                              });
                            }),
                        Change_app_ico_Text()
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            side: BorderSide(
                                width: 4.0,
                                style: BorderStyle.solid,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: AppColor.lightdarckColor),
                            focusColor: AppColor.darckgrayColor,
                            checkColor: AppColor.greenColor,
                            activeColor: AppColor.darckgrayColor,
                            value: isChecked5,
                            onChanged: (val) {
                              setState(() {
                                isChecked5 = val!;
                              });
                            }),
                        Premium_badge_next_to_name_Text()
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            side: BorderSide(
                                width: 4.0,
                                style: BorderStyle.solid,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: AppColor.lightdarckColor),
                            focusColor: AppColor.darckgrayColor,
                            checkColor: AppColor.greenColor,
                            activeColor: AppColor.darckgrayColor,
                            value: isChecked6,
                            onChanged: (val) {
                              setState(() {
                                isChecked6 = val!;
                              });
                            }),
                        Filter_for_premium_only_chats_Text()
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    MORE_FEATURES_COMING_SOON_Text()
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  Get.to(()=>Premium_Step2());
                },
                child: Container(
                  width: 188,
                  height: 61,
                  decoration: BoxDecoration(
                    color: AppColor.greenColor,
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: Center(
                    child: BUY_NOW_MONTH_Text(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
