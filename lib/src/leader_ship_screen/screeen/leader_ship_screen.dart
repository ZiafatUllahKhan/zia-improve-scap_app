import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:improve_scape/src/utils/colors/colors.dart';

import '../../../models/listview_builder.dart';
import '../../../reuseable_widgets/custom_buttom_nav_bar.dart';
import '../../premium_step1_screen/screen/premium_step1_screen.dart';
import '../component/leader_Ship_component.dart';

class LeaderShipScreen extends StatelessWidget {
  const LeaderShipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      appBar: AppBar(
        backgroundColor: AppColor.blackColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: InkWell(
            onTap: () {
              Get.to(()=>PremiumStep1());
            },
            child: Icon(
              Icons.dehaze,
              size: 22,
            ),
          ),
        ),
        centerTitle: false,
        title: Leaderboard_title_Text(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Leaderboard_Action_Image(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width * 1,
              height: size.height * 0.5,
              // color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: size.width * 0.3,
                    height: size.height * 0.5,
                    // color: AppColor.whiteColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        leadership_screen_Image1(size),
                        Container(
                          width: size.width * 0.3,
                          height: size.height * 0.28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffF8DB45),
                                Color(0xffEC25CC),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Esther_Text(),
                              ),
                              Logs_22_Text(),
                              leadership_screen_icon2(size)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.3,
                    height: size.height * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        leadership_screen_Image2(size),
                        Container(
                          width: size.width * 0.3,
                          height: size.height * 0.34,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xff4B52FD),
                                    Color(0xff94BFFF),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Maria_Text(),
                              ),
                              Logs_36_Text(),
                              leadership_screen_Icon1(size)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.3,
                    height: size.height * 0.5,
                    // color: AppColor.redColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        leadership_screen_Image3(size),
                        Container(
                          width: size.width * 0.3,
                          height: size.height * 0.23,
                          decoration: BoxDecoration(
                            color: AppColor.whiteColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xffDA2F4D),
                                  Color(0xffFFA63D),
                                  Color(0xffCDF628),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0.0, 0.99, 1.0]),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Alish_Text(),
                              ),
                              Logs_14_Text(),
                              leadership_screen_Icon3(size)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: size.height * 0.01,),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: itemVertDataList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    horizontalTitleGap: 15,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    leading: ListTile_leading_assetsImage(index),
                    title: ListTile_titleText(index),
                    trailing: ListTile_trailing_Text(index),
                  );
                }),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(index: 3),
    );
  }
}
