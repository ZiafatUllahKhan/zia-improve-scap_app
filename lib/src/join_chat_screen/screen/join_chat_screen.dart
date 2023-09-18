import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../reuseable_widgets/custtom_container.dart';
import '../../daily_goals_screen/screen/daily_goals_screen.dart';
import '../../utils/colors/colors.dart';
import '../component/join_chat_component.dart';

class JoinChat_Screen extends StatefulWidget {
  const JoinChat_Screen({super.key});

  @override
  State<JoinChat_Screen> createState() => _JoinChat_ScreenState();
}

class _JoinChat_ScreenState extends State<JoinChat_Screen> {
  bool isAct = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Get.to(()=>DailyGoals());
          },
          child: keyboard_arrow_left_Icon(),
        ),
        centerTitle: true,
        title: appBarTitle_Join_Chat_Text(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 22,),
            Padding(
              padding: const EdgeInsets.only(left:20,),
              child: Container(
                width: double.infinity,
                height: 135,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColor.darckgrayColor,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:10),
                      child: Row(
                        children: [
                          Description_of_chat_Text(),
                          Expanded(
                            child: TextFormField(
                              style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.white),
                              decoration: InputDecoration(
                                fillColor: AppColor.darckgrayColor,
                                focusColor: Colors.white,
                                filled: true,
                                hintText: "Enter here",
                                hintStyle: GoogleFonts.outfit(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.grey),
                                enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                                focusedBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:10),
                          child: Text(
                            "Member Amount:",
                            style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            style: GoogleFonts.outfit(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.white),
                            decoration: InputDecoration(
                              fillColor: AppColor.darckgrayColor,
                              focusColor: Colors.white,
                              filled: true,
                              hintText: "2-10",
                              hintStyle: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.grey),
                              enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                              focusedBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 22,),
            Container(
              width: double.infinity,
              height: 185,
              decoration: BoxDecoration(
                color: AppColor.darckgrayColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  ListTile(
                      title: ListTile_title_Text_private_Group(),
                      trailing: Container(
                        width: 45.0,
                        height: 25.0,
                        child: FlutterSwitch(
                            inactiveColor: Colors.deepOrange,
                            activeColor: AppColor.greenColor,
                            width: 40.0,
                            height: 20.0,
                            toggleSize: 18,
                            // toggleSize: size.height * 0.1,
                            value: isAct,
                            onToggle: (value) {
                              setState(() {
                                isAct = value;
                              });
                            }),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: Row(
                      children: [
                        Group_password_Text(),
                        Expanded(
                          child: TextFormField(
                            style: GoogleFonts.outfit(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.white),
                            decoration: InputDecoration(
                              fillColor: AppColor.darckgrayColor,
                              focusColor: Colors.white,
                              filled: true,
                              hintText: "Enter Here",
                              hintStyle: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.grey),
                              enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                              focusedBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10),
                        child: Enter_Group_link_Text(),
                      ),
                      Expanded(
                        child: TextFormField(
                          style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white),
                          decoration: InputDecoration(
                            fillColor: AppColor.darckgrayColor,
                            focusColor: Colors.white,
                            filled: true,
                            hintText: "(Optional)",
                            hintStyle: GoogleFonts.outfit(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.grey),
                            enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                            focusedBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 150,),
            InkWell(
              onTap: (){
                Get.to(()=>DailyGoals());
              },
              child: CusttomContainer(
                WIDTH: 169,
                HEIGHT: 80,
                COLORS: AppColor.lightdarckColor,
                RADIUS: BorderRadius.circular(50),
                text: "Make \nchat",
                STyl: GoogleFonts.outfit(
                    color: Colors.white, fontSize: 32, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }


}
