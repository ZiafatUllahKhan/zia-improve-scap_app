import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../models/listview_builder.dart';
import '../../../reuseable_widgets/custom_buttom_nav_bar.dart';
import '../../../reuseable_widgets/custtom_container.dart';
import '../../../reuseable_widgets/custtom_textfield.dart';
import '../../join_chat_screen/screen/join_chat_screen.dart';
import '../../logout_screen/screen/logout_screen.dart';
import '../../make_chat_Screen/screen/make_chat_screen.dart';
import '../../premium_step1_screen/screen/premium_step1_screen.dart';
import '../../utils/colors/colors.dart';
import '../component/daily_goals_component.dart';

class DailyGoals extends StatelessWidget {
  const DailyGoals({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.greenColor,
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
        title: title_Text(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: (){
                Get.to(()=>LogOut_Screen());
              },
              child: actions_Image(size),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
    width: double.infinity,
    height: 770,
    decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(30),
    bottomRight: Radius.circular(30),
    ),
    ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 30),
                child: Container(
                  width: size.width * 0.9,
                  height: size.height * 0.1,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: AppColor.lightdarckColor,
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Colors.white,),
                      prefixIconColor: AppColor.whiteColor,
                      hintText: "Search",
                      hintStyle: GoogleFonts.poppins(
                        color: AppColor.whiteColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none
                      ),
                      enabledBorder:  OutlineInputBorder(
                        borderSide:BorderSide.none,
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: itemVertDataList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      horizontalTitleGap: 15,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      leading: Image.asset(
                        itemtDataList[index].image1,
                      ),
                      title: ListTile_title_Text(index),
                      subtitle: ListTile_Subtitle_Text(index),
                      trailing: ListTile_tralling_Text(index),
                    );
                  }
                  ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(()=>MakeChat_Screen());
                    },
                    child: CusttomContainer(
                      WIDTH: 130,
                      HEIGHT: 50,
                      COLORS: AppColor.greenColor,
                      RADIUS: BorderRadius.circular(50),
                      text: "Make a chat",
                      STyl: GoogleFonts.outfit(
                          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(()=>JoinChat_Screen());
                    },
                    child: CusttomContainer(
                      // WIDTH: MediaQuery.of(context).size.width * 0.4,
                      // HEIGHT: MediaQuery.of(context).size.height * 0.1,
                      WIDTH: 130,
                      HEIGHT: 50,
                      COLORS: AppColor.lightdarckColor,
                      RADIUS: BorderRadius.circular(50),
                      text: "Join a chat",
                      STyl: GoogleFonts.outfit(
                          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        index: 1,
      ),
    );
  }


}
