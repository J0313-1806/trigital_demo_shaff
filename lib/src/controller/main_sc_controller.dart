import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trigital_demo_shaff/src/view/pages/activity_page.dart';
import 'package:trigital_demo_shaff/src/view/pages/discover_page.dart';
import 'package:trigital_demo_shaff/src/view/pages/home_page.dart';
import 'package:trigital_demo_shaff/src/view/pages/my_stream_page.dart';
import 'package:trigital_demo_shaff/src/widget/custom_drawer/config.dart';

class MainSController extends GetxController {
  /// initialising PageView controller
  var pageController = PageController().obs;

  /// intialising controller for zoomDrawer
  var zoomDrawerController = ZoomDrawerController().obs;

  /// Page index for bottom navigation
  RxInt pageIndex = RxInt(0);

  /// List of pages inside main screen
  RxList<Widget> pages = RxList(
      const [HomePage(), DiscoverPage(), MyStreamPage(), ActivityPage()]);

  /// List of label names for bottom navigation bar items
  RxList<String> labelName =
      RxList(['Home', 'Discover', 'My Streams', 'Activity']);

  @override
  void dispose() {
    zoomDrawerController.close();
    pageController.value.dispose();
    super.dispose();
  }
}
