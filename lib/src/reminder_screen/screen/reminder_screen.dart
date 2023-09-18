import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors/colors.dart';
import '../component/reminder_component.dart';

class ReminderScreen extends StatelessWidget {
  const ReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: AppColor.blackColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Icon(
            Icons.arrow_back_ios,
            size: 21,
            weight: 21,
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        title: AppBar_title_ReminderText(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 23,right: 24),
          child: Column(
            children: [
              SizedBox(height: 42,),
              Container(
                width: double.infinity,
                height: 62,
                decoration: BoxDecoration(
                  color: AppColor.darckgrayColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Dont_forget_to_go_for_a_run_Text(),
                    calendar_month_Icon()
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: double.infinity,
                height: 62,
                decoration: BoxDecoration(
                  color: AppColor.darckgrayColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Dont_forget_to_do_your_daily_journaling_Text(),
                    calendar_month_Icon()
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: double.infinity,
                height: 62,
                decoration: BoxDecoration(
                  color: AppColor.darckgrayColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Make_sure_you_read_a_chapter_Text(),
                    calendar_month_Icon()
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Icon(
                Icons.add_box_sharp,
                size: 37,
                color: AppColor.whiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }


}
