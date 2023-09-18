import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../reuseable_widgets/custtom_container.dart';
import '../../daily_goals_screen/screen/daily_goals_screen.dart';
import '../../utils/colors/colors.dart';
import '../component/make_chat_component.dart';

class MakeChat_Screen extends StatefulWidget {
  const MakeChat_Screen({super.key});

  @override
  State<MakeChat_Screen> createState() => _MakeChat_ScreenState();
}

class _MakeChat_ScreenState extends State<MakeChat_Screen> {
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
          child: keyboard_arrow_left_LeadingIcon(),
        ),
        centerTitle: true,
        title: Enter_Name_Text(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
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
                      child: circular_image()),
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
                      child: edit1_Icon(),
                    ))
              ]),
            ),
            SizedBox(
              height: 9.75,
            ),
            Add_a_photoText1(),
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
                          Text_Description_of_chat(),
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
                          child: Member_Amount_Text(),
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
              height: 170,
              decoration: BoxDecoration(
                color: AppColor.darckgrayColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  ListTile(
                      title: ListTile_title_PrivategroupText(),
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
                      )),
                  ListTile(
                      title: ListTile_titel_Group_password_Text(),
                      trailing: ListTile_trailing_fitness_Image()
                      // trailing: Text("ABC"),
                      ),
                  ListTile(
                    title: ListTile_title_Grouplink_Text(),
                    trailing: Trailing_copy_Icon(),
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
                WIDTH: 125,
                HEIGHT: 27,
                COLORS: AppColor.greenColor,
                RADIUS: BorderRadius.circular(50),
                text: "Make chat",
                STyl: GoogleFonts.outfit(
                    color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
