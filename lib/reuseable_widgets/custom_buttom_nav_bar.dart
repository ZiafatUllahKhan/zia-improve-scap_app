import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../src/chatlist_screen/screen/chatlist_screen.dart';
import '../src/daily_goals_screen/screen/daily_goals_screen.dart';
import '../src/home_screen/screen/home_screen.dart';
import '../src/leader_ship_screen/screeen/leader_ship_screen.dart';
import '../src/setting_screen/screen/setting_screen.dart';
import '../src/utils/colors/colors.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int? index;
  CustomBottomNavBar({ this.index = 2});
  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}
class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 2;
  PageController? _pageController;
  void initState() {
    super.initState();
    _pageController = PageController();
  }
  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return
      ClipRRect(
        child: CustomNavigationBar(
            iconSize: Get.height*0.04,
            selectedColor:Colors.white,
            unSelectedColor:AppColor.whiteColor,
            backgroundColor: AppColor.greenColor,
            items: [
              CustomNavigationBarItem(
                icon: InkWell(
                  onTap: (){
                     // Get.to(()=>ChatList_screen());
                     Get.offAll(()=>ChatList_screen());
                  },
                  child: Image.asset("assets/images/homescreen_image/chat_icon.png",
                    color:widget.index==0? Colors.white: AppColor.whiteColor,
                  ),
                ),
              ),
              CustomNavigationBarItem(
                icon: InkWell(
                  onTap: (){
                     // Get.to(()=>DailyGoals());
                      Get.offAll(()=>DailyGoals());
                  },
                  child: Image.asset("assets/images/homescreen_image/search_icon.png",
                    color:widget.index==1? Colors.white: AppColor.whiteColor,
                  ),
                ),
              ),
              CustomNavigationBarItem(
                icon: InkWell(
                  onTap: (){
                    Get.to(()=>Home_Screen());
                  },
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(200)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset("assets/images/homescreen_image/home_icon.jpg",
                        height: 32, width: 32,
                        // color:widget.index==2? AppColor.greenColor: AppColor.greenColor,
                      ),
                    ),
                  ),
                ),
              ),
              CustomNavigationBarItem(
                icon: InkWell(
                  onTap: (){
                    // Get.to(()=>LeaderShipScreen());
                     Get.offAll(()=>LeaderShipScreen());
                  },
                  child: Image.asset("assets/images/homescreen_image/cup_icon.png",
                    color:widget.index==3? AppColor.whiteColor: AppColor.whiteColor,
                  ),
                ),
              ),
              CustomNavigationBarItem(
                icon: InkWell(
                  onTap: (){
                    // Get.to(()=>SettingScreen());
                     Get.offAll(()=>SettingScreen());
                  },
                  child: Image.asset("assets/images/homescreen_image/setting_icon.png",
                    color:widget.index==4? Colors.white: AppColor.whiteColor,
                  ),
                ),
              ),
            ],
            currentIndex: widget.index??_selectedIndex,
            onTap: (index) {
              _selectedIndex = index;
              _pageController?.animateToPage(
                  index, duration: Duration(milliseconds: 1), curve: Curves.ease);
            }
        ),
      );
  }
}
