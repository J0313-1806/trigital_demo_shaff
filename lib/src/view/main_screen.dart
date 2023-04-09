import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trigital_demo_shaff/src/constants/app_colors.dart';
import 'package:trigital_demo_shaff/src/controller/main_sc_controller.dart';
import 'package:trigital_demo_shaff/src/view/menu_screen.dart';
import 'package:trigital_demo_shaff/src/widget/custom_drawer/config.dart';
import 'package:trigital_demo_shaff/src/widget/custom_drawer/zoom_drawer.dart';
import 'package:trigital_demo_shaff/src/widget/custom_nav_bar.dart';

final MainSController _mainSController = Get.put(MainSController());

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: _mainSController.zoomDrawerController.value,
      menuScreen: const MenuScreen(),
      mainScreen: const MainScreen(),
      mainScreenScale: 0.25,
      menuScreenWidth: double.infinity,
      angle: 5,
      androidCloseOnBackTap: true,
      style: DrawerStyle.defaultStyle,
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(AppColors.black),
        leading: IconButton(
          splashRadius: 24,
          onPressed: () async {
            _mainSController.zoomDrawerController.value.open?.call();
          },
          icon: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(AppColors.darkGrey),
            ),
            child: const Icon(
              Icons.menu,
              color: Color(AppColors.white),
              size: 16,
            ),
          ),
        ),
        title: const Icon(
          Icons.gamepad,
          color: Color(AppColors.yellow),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                color: Color(AppColors.darkGrey),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: Obx(
        () =>
            _mainSController.pages.elementAt(_mainSController.pageIndex.value),
      ),
      backgroundColor: const Color(AppColors.black),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
