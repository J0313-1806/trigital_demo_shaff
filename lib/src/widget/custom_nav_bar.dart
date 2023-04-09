import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trigital_demo_shaff/src/constants/app_colors.dart';
import 'package:trigital_demo_shaff/src/controller/main_sc_controller.dart';
import 'package:trigital_demo_shaff/src/widget/custom_bottom_bar/water_drop_nav_bar.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  static final MainSController _mainSController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => WaterDropNavBar(
        waterDropColor: const Color(AppColors.gold),
        backgroundColor: const Color(AppColors.bottomGrey),
        inactiveIconColor: const Color(AppColors.dividerGrey),
        bottomPadding: 26,
        iconSize: 24,
        label: _mainSController.labelName,
        barItems: [
          BarItem(
            filledIcon: Icons.home,
            outlinedIcon: Icons.home_outlined,
          ),
          BarItem(
            filledIcon: Icons.rocket_launch,
            outlinedIcon: Icons.rocket_launch_outlined,
          ),
          BarItem(
            filledIcon: Icons.videocam,
            outlinedIcon: Icons.videocam_outlined,
          ),
          BarItem(
            filledIcon: Icons.notifications,
            outlinedIcon: Icons.notifications_outlined,
          ),
        ],
        selectedIndex: _mainSController.pageIndex.value,
        onItemSelected: (int index) {
          _mainSController.pageIndex(index);
        },
        onTap: () {
          // For Streaming Button
        },
      ),
    );
  }
}
