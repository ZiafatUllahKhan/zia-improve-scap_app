import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:improve_scape/src/utils/colors/colors.dart';

import '../../../models/listview_builder.dart';
import '../../../reuseable_widgets/custtom_container.dart';
import '../../daily_goals_screen/screen/daily_goals_screen.dart';
import '../components/user_details_components.dart';

class UserDetailes extends StatefulWidget {
  const UserDetailes({super.key, });

  @override
  State<UserDetailes> createState() => _UserDetailesState();
}

class _UserDetailesState extends State<UserDetailes> {
  bool isAct = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      appBar: AppBar(
        backgroundColor: AppColor.blackColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25, top: 20),
          child: InkWell(
            onTap: Get.back,
            child: Icon(
              Icons.arrow_back_ios,
              size: 18,
              weight: 8,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 23),
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
                            child: fitness_icon1_Image()),
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
                height: 10,
              ),
              Fitness1_Text(),
              SizedBox(
                height: 10,
              ),
              members_Text(),
              SizedBox(height: 21,),
              Container(
                width: double.infinity,
                height: 280,
                decoration: BoxDecoration(
                  color: AppColor.darckgrayColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: fitnessItemListModel.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        horizontalTitleGap: 15,
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        leading: Image.asset(
                          fitnessItemListModel[index].image,
                        ),
                        title: ListTile_title1_Text(index),

                      );
                    }
                ),
              ),
              SizedBox(height: 20,),
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
                         title: Privategroup_Text(),
                         trailing: Container(
                           width: 45.0,
                           height: 25.0,
                           child: FlutterSwitch(
                               inactiveColor: AppColor.redColor,
                               activeColor: AppColor.greenColor,
                               width: 40.0,
                               height: 25.0,
                               toggleSize: 17,
                               // toggleSize: size.height * 0.1,
                               value: isAct,
                               onToggle: (value) {
                                 setState(() {
                                   isAct = value;
                                 });
                               }),
                         )
                     ),
                     ListTile(
                       title: GrouppasswordText(),
                       trailing: fitness_image_ABC_Icon()
                       // trailing: Text("ABC"),
                     ),
                     ListTile(
                       title: Grouplink_Text(),
                       trailing: Icon(Icons.copy, color: Colors.white,),
                     ),
                   ],
                 ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Get.to(()=>DailyGoals());
                },
                child: CusttomContainer(
                  WIDTH: 125,
                  HEIGHT: 27,
                  COLORS: AppColor.redColor,
                  RADIUS: BorderRadius.circular(50),
                  text: "Leave Chat",
                  STyl: GoogleFonts.outfit(
                      color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(height: 70,),
            ],
          ),
        ),
      ),
    );
  }


}
