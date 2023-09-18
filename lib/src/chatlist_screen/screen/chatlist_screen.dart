import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../models/listview_builder.dart';
import '../../../reuseable_widgets/custom_buttom_nav_bar.dart';
import '../../chating_screen/screen/chating_screen.dart';
import '../../logout_screen/screen/logout_screen.dart';
import '../../utils/colors/colors.dart';
import '../component/chatlist_component.dart';

class ChatList_screen extends StatelessWidget {
  const ChatList_screen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.greenColor,
      appBar: AppBar(
        backgroundColor: AppColor.blackColor,
        elevation: 0,
        centerTitle: false,
        title: Text(
          "Serach",
          style:
          GoogleFonts.outfit(fontSize: 20.07, fontWeight: FontWeight.w500),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: (){
                Get.to(()=>LogOut_Screen());
              },
              child: Image.asset(
                "assets/images/homescreen_image/image1.png",
                width: size.width * 0.24,
                height: size.height * 0.24,
              ),
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
              SizedBox(
                height: size.height * 0.01,
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: itemVertDataList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(()=>ChatingScreen());
                      },
                      child: ListTile(
                        horizontalTitleGap: 15,
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        leading: Image.asset(
                          itemtDataList[index].image1,
                        ),
                        title: ListTile_Title_Text(index),
                        subtitle: ListTile_SubTitle_Text(index),
                        trailing: tralling_Text(index),
                      ),
                    );
                  }
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        index: 0,
      ),
    );
  }


}
