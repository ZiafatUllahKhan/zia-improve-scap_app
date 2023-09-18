import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:improve_scape/src/utils/colors/colors.dart';

import '../../../reuseable_widgets/custom_buttom_nav_bar.dart';
import '../../add_logs_screen/screen/add_logs_screen.dart';
import '../../premium_step1_screen/screen/premium_step1_screen.dart';
import '../component/home_screen_component.dart';
import '../controller/home_screen_controller.dart';

class Home_Screen extends StatelessWidget {
   Home_Screen({super.key});
  final homeController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.blackColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.blackColor,
          // leadingWidth: 40,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: InkWell(
              onTap: (){
                Get.to(()=>PremiumStep1());
              },
              child: appBAr_Leading_Image(),
            ),
          ),
          centerTitle: false,
          title: appBar_titie_Text(),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: appBar_actions_Image(),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 33,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 25),
                child: Row(
                  children: [
                    DailyGoals_Text(),
                    SizedBox(
                      width: 180,
                    ),
                    Row(
                      children: [
                        edit_Icon(),
                        SizedBox(
                          width: 10,
                        ),
                        Edit_Text()
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),

              Obx(()=> HomeScreenComponent().buildContainer(text: 'Go to the gym',
                  color:homeController.selectCon1.value ? AppColor.greenColor: Color(0xff201E23), onTap: (){
                    homeController.selectCon1.value =! homeController.selectCon1.value;
                  }
              ),),
              // Obx(() => InkWell(
              //   onTap: (){
              //     homeController.selectCon1.value =! homeController.selectCon1.value;
              //   },
              //   child: Container(
              //     height: 55,
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       color:homeController.selectCon1.value ? AppColor.greenColor: Color(0xff201E23),
              //       borderRadius: BorderRadius.circular(8),
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.only(left:20,top: 17),
              //       child: Text("text",style: GoogleFonts.outfit(
              //         fontWeight: FontWeight.w600,
              //         fontSize: 18,
              //         color: AppColor.whiteColor,
              //       ),),
              //     ),
              //   ),
              // ),),

              SizedBox(height: 7,),
              Obx(()=> HomeScreenComponent().buildContainer(text: 'Read a book',
                  color:homeController.selectCon2.value ? AppColor.greenColor: Color(0xff201E23),
                  onTap: (){
                    homeController.selectCon2.value =! homeController.selectCon2.value;
                  }
              ),),
              // Obx(() => InkWell(
              //   onTap: (){
              //     homeController.selectCon2.value =! homeController.selectCon2.value;
              //   },
              //   child: Container(
              //     height: 55,
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       color:homeController.selectCon2.value ? AppColor.greenColor: Color(0xff201E23),
              //       borderRadius: BorderRadius.circular(8),
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.only(left:20,top: 17),
              //       child: Text("text",style: GoogleFonts.outfit(
              //         fontWeight: FontWeight.w600,
              //         fontSize: 18,
              //         color: AppColor.whiteColor,
              //       ),),
              //     ),
              //   ),
              // ),),
              SizedBox(height: 7,),
              Obx(()=> HomeScreenComponent().buildContainer(text: 'Learn a new skill',
                  color:homeController.selectCon3.value ? AppColor.greenColor: Color(0xff201E23), onTap: (){
                    homeController.selectCon3.value =! homeController.selectCon3.value;
                  }
              ),),
              // Obx(() => InkWell(
              //   onTap: (){
              //     homeController.selectCon3.value =! homeController.selectCon3.value;
              //   },
              //   child: Container(
              //     height: 55,
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       color:homeController.selectCon3.value ? AppColor.greenColor: Color(0xff201E23),
              //       borderRadius: BorderRadius.circular(8),
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.only(left:20,top: 17),
              //       child: Text("text",style: GoogleFonts.outfit(
              //         fontWeight: FontWeight.w600,
              //         fontSize: 18,
              //         color: AppColor.whiteColor,
              //       ),),
              //     ),
              //   ),
              // ),),
              SizedBox(height: 12,),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                  Image.asset(
                  "assets/images/homescreen_image/image3.png",
                  width: 220,
                  height: 209,
                ),
                            // assets_Image1(),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                          Image.asset(
                          "assets/images/homescreen_image/image3.png",
                          width: 220,
                          height: 209,
                        ),
                            // assets_Image1(),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                          Image.asset(
                          "assets/images/homescreen_image/image3.png",
                          width: 220,
                          height: 209,
                        ),
                            // assets_Image1(),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                          Image.asset(
                          "assets/images/homescreen_image/image3.png",
                          width: 220,
                          height: 209,
                        ),
                            // assets_Image1(),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                          Image.asset(
                          "assets/images/homescreen_image/image3.png",
                          width: 220,
                          height: 209,
                        ),
                            // assets_Image1(),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 14,),
                    Row(
                      children: [
                        Today_I_read_a_book_Text(),
                        SizedBox(width: 40,),
                        Today_I_read_a_book_Text(),
                        SizedBox(width: 40,),
                        Today_I_read_a_book_Text(),
                        SizedBox(width: 40,),
                        Today_I_read_a_book_Text(),
                        SizedBox(width: 40,),
                        Today_I_read_a_book_Text(),
                      ],
                    )
                  ],
                ),

              ),
              SizedBox(height: 19,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Add_Your_Logs_Text(),
                      ),
                      SizedBox(width: 10,),
                      vector_Icon_Image()
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(()=>Add_Logs_Screen());
                    },
                    child: Container(
                      width: 90,
                      height: 60,
                      decoration: BoxDecoration(
                        color: AppColor.greenColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50)),
                      ),
                      child: Add_box_sharp_Icon(),
                    ),
                  )
                ],
              ),
              SizedBox(height: 25,),
            ],
          ),
        ),
      bottomNavigationBar: CustomBottomNavBar(index: 2,),
    );
  }
}