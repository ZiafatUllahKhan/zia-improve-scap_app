import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../user_details_screen/screen/user_details_screen.dart';
import '../../utils/colors/colors.dart';
import '../component/chating_component.dart';
class ChatingScreen extends StatelessWidget {
  const ChatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.blackColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.keyboard_arrow_left_rounded,
                  size: 40,
                )),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Get.to(()=>UserDetailes());
              },
              child: Image.asset(
                "assets/images/chat_list_image/Profile_image.png",
                width: 44,
                height: 43.7,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FitnessText(),
                members_Text(),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.blackColor,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                  )),
              Container(
                color: AppColor.greenColor,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: [
                    Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff57E3B0),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextField(
                            maxLines: null,
                            style: TextStyle(color: AppColor.whiteColor),
                            decoration: InputDecoration(
                                hintText: "Your message",
                                hintStyle: TextStyle(color: Colors.white),
                                helperStyle: TextStyle(color: Colors.white),
                                suffix: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Icon(Icons.emoji_emotions_outlined,color: Colors.white,)),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 10)),
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColor.blackColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.send,
                            color: AppColor.whiteColor,
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
