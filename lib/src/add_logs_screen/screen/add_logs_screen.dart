import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:improve_scape/src/add_logs_screen/controller/add_logs_controller.dart';
import 'package:improve_scape/src/utils/colors/colors.dart';

import '../../../reuseable_widgets/custtom_container.dart';
import '../../../reuseable_widgets/custtom_textfield.dart';
import '../../home_screen/screen/home_screen.dart';
import '../component/add_logs_component.dart';

class Add_Logs_Screen extends StatelessWidget {
  Add_Logs_Screen({super.key});

  final addLogsController = Get.put(AddLogs_ScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_sharp,
          color: Colors.white,
        ),
        centerTitle: false,
        title: titleText(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              addPhotoText(),
              Container(
                width: 291,
                height: 225,
                decoration: BoxDecoration(
                  color: AppColor.greenColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.add_photo_alternate_outlined,
                  color: Colors.white,
                  size: 200,
                  weight: 200,
                ),
              ),
              SizedBox(
                height: 33,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: EnterCaptionTextFormField(),
              ),
              SizedBox(
                height: 36,
              ),
              GoalCompletedText(),
              SizedBox(
                height: 15,
              ),
              Obx(
                () => AddLogsScreenComponent().buildContainer(
                    text: 'Go to the gym',
                    color: addLogsController.selectCon1.value
                        ? AppColor.greenColor
                        : Color(0xff201E23),
                    onTap: () {
                      addLogsController.selectCon1.value =
                          !addLogsController.selectCon1.value;
                    }),
              ),
              SizedBox(
                height: 5,
              ),
              Obx(() => AddLogsScreenComponent().buildContainer(
                  text: "Read a book",
                  color: addLogsController.selectCon2.value
                      ? AppColor.greenColor
                      : AppColor.darckgrayColor,
                  onTap: () {
                    addLogsController.selectCon2.value =
                        !addLogsController.selectCon2.value;
                  })),
              SizedBox(
                height: 5,
              ),
              Obx(() => AddLogsScreenComponent().buildContainer(
                  text: "Learn a new skill",
                  color: addLogsController.selectCon3.value
                      ? AppColor.greenColor
                      : AppColor.darckgrayColor,
                  onTap: () {
                    addLogsController.selectCon3.value =
                        !addLogsController.selectCon3.value;
                  })),
              SizedBox(
                height: 66,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => Home_Screen());
                    },
                    child: CusttomContainer(
                      WIDTH: 130,
                      HEIGHT: 56,
                      COLORS: AppColor.redColor,
                      RADIUS: BorderRadius.circular(50),
                      text: "Delete Log ",
                      STyl: GoogleFonts.outfit(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => Home_Screen());
                    },
                    child: CusttomContainer(
                      WIDTH: 130,
                      HEIGHT: 56,
                      COLORS: AppColor.greenColor,
                      RADIUS: BorderRadius.circular(50),
                      text: "Enter Log ",
                      STyl: GoogleFonts.outfit(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
