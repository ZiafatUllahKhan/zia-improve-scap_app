import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:improve_scape/src/utils/colors/colors.dart';

import '../../../models/listview_builder.dart';
import '../../../reuseable_widgets/custom_buttom_nav_bar.dart';
import '../../hall_of_fame_screen/screen/hall_of_fame_screen.dart';
import '../../logout_screen/screen/logout_screen.dart';
import '../../premium_step1_screen/screen/premium_step1_screen.dart';
import '../../reminder_screen/screen/reminder_screen.dart';
import '../component/setting_component.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isAct = false;
  bool isAct2 = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      appBar: AppBar(
        backgroundColor: AppColor.blackColor,
        elevation: 0,
        // leadingWidth: 40,
        leading: Padding(
          padding:  EdgeInsets.only(left: 10, top: 10),
          child: InkWell(
            onTap: (){
              Get.to(()=>PremiumStep1());
            },
            child: Icon(
              Icons.dehaze,
              size: 22,
            ),
          ),
        ),
        centerTitle: false,
        title: AppBar_title_SettingsText(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: SettingScreen_circular_Image(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(20),
          child: Container(
            // height: size.height * 0.5,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.darckgrayColor,
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Profile_Icon(),
                  title: Profile_Text(),
                  trailing: InkWell(
                    onTap: () {
                      Get.to(()=>LogOut_Screen());
                    },
                      child: arrow_forward_ios_Icon()),
                ),
                ListTile(
                  leading: Contact_Icon(),
                  title: Contact_us_Text(),
                  trailing: InkWell(
                    onTap: (){
                      Get.to(()=>LogOut_Screen());
                    },
                      child: arrow_forward_ios_Icon()),
                ),
                ListTile(
                  leading: Notification_Icon(),
                  title: Notification_Text(),
                  trailing: Container(
                    width: 45.0,
                    height: 25.0,
                    child: FlutterSwitch(
                        inactiveColor: AppColor.redColor,
                        activeColor: AppColor.greenColor,
                        width: 45.0,
                        height: 25.0,
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
                  leading: lock_Icon(),
                  title: Private_Text(),
                  trailing: Container(
                    width: 45.0,
                    height: 25.0,
                    child: FlutterSwitch(
                        inactiveColor: AppColor.redColor,
                        activeColor: AppColor.greenColor,
                        width: 45.0,
                        height: 25.0,
                        // toggleSize: size.height * 0.1,
                        value: isAct2,
                        onToggle: (value) {
                          setState(() {
                            isAct2 = value;
                          });
                        }),
                  )
                ),
                ListTile(
                    leading: InkWell(
                          onTap: (){
                            Get.to(()=>ReminderScreen());
                          },
                        child: timer_Icon()),
                    title: Set_Reminder_Text(),
                    trailing: InkWell(
                        onTap: (){
                          Get.to(()=>ReminderScreen());
                        },
                        child: arrow_forward_ios_Icon()),
                  ),
                ListTile(
                  leading: star_Icon(),
                  title: HallofFame_Text(),
                  trailing: InkWell(
                    onTap: (){
                      Get.to(()=>Hall_Of_Fame_Screen());
                    },
                      child: arrow_forward_ios_Icon()),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        index: 4,
      ),
    );
  }


}
