import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trigital_demo_shaff/src/constants/app_colors.dart';
import 'package:trigital_demo_shaff/src/constants/app_strings.dart';
import 'package:trigital_demo_shaff/src/controller/main_sc_controller.dart';
import 'package:trigital_demo_shaff/src/controller/menu_sc_controller.dart';
import 'package:trigital_demo_shaff/src/widget/anim_chevron.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});
  static final MainSController mainSController = Get.find();
  static final MenuSController menuScontroller = Get.put(MenuSController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(5, 30, 10, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                splashRadius: 24,
                onPressed: () {
                  mainSController.zoomDrawerController.value.close?.call();
                },
                icon: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(AppColors.darkGrey),
                  ),
                  child: const Icon(
                    Icons.close,
                    color: Color(AppColors.white),
                    size: 16,
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              const Icon(
                Icons.message,
                color: Color(AppColors.grey),
              ),
              const Icon(
                Icons.notifications,
                color: Color(AppColors.grey),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                decoration: const BoxDecoration(
                  color: Color(AppColors.yellow),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.person),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height - 120,
          width: MediaQuery.of(context).size.width / 1.4,
          alignment: Alignment.centerLeft,
          // color: Colors.blue,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ExpansionTile(
                  title: const Text(
                    AppString.favGames,
                    style: TextStyle(
                      color: Color(
                        AppColors.white,
                      ),
                    ),
                  ),
                  leading: const Icon(
                    Icons.sunny,
                    size: 16,
                    color: Color(AppColors.grey),
                  ),
                  trailing: Obx(
                    () => AnimatedChevron(
                        isExpanded:
                            menuScontroller.favouriteGameTileExpanded.value),
                  ),
                  onExpansionChanged: (value) =>
                      menuScontroller.favouriteGameTileExpanded(value),
                  expandedAlignment: Alignment.centerLeft,
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    menuScontroller.favouriteGamesList.value.length,
                    (index) => Padding(
                      padding: const EdgeInsets.fromLTRB(75, 8.0, 8.0, 8.0),
                      child: Text(
                        menuScontroller.favouriteGamesList[index],
                        style: const TextStyle(
                          color: Color(
                            AppColors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(
                  height: 50,
                  color: Color(AppColors.dividerGrey),
                ),
                ...List.generate(
                  menuScontroller.miscList.length,
                  (index) => ListTile(
                    onTap: () {
                      menuScontroller.miscList.update(
                          menuScontroller.miscList.keys.elementAt(index),
                          (value) {
                        value++;
                        return value;
                      });
                    },
                    onLongPress: () {
                      menuScontroller.miscList.update(
                          menuScontroller.miscList.keys.elementAt(index),
                          (value) {
                        value--;
                        return value;
                      });
                    },
                    leading: Icon(
                      menuScontroller.miscListIcon[index],
                      color: const Color(AppColors.grey),
                    ),
                    title: Text(
                      menuScontroller.miscList.keys.elementAt(index),
                      style: const TextStyle(
                        color: Color(
                          AppColors.grey,
                        ),
                      ),
                    ),
                    trailing: Obx(
                      () => Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(AppColors.goldLight),
                        ),
                        child: Text(
                          menuScontroller.miscList.values
                              .elementAt(index)
                              .toString(),
                          style: const TextStyle(
                            color: Color(AppColors.gold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(
                  height: 50,
                  color: Color(AppColors.dividerGrey),
                ),
                ExpansionTile(
                  title: const Text(
                    AppString.subscriptions,
                    style: TextStyle(
                      color: Color(
                        AppColors.white,
                      ),
                    ),
                  ),
                  leading: const Icon(
                    Icons.rocket_launch_rounded,
                    size: 16,
                    color: Color(AppColors.grey),
                  ),
                  trailing: Obx(
                    () => AnimatedChevron(
                        isExpanded:
                            menuScontroller.subscriptionTileExpanded.value),
                  ),
                  onExpansionChanged: (value) =>
                      menuScontroller.subscriptionTileExpanded(value),
                  expandedAlignment: Alignment.centerLeft,
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    menuScontroller.subscriptionList.value.length,
                    (index) => Padding(
                      padding: const EdgeInsets.fromLTRB(75, 8.0, 8.0, 8.0),
                      child: Text(
                        menuScontroller.subscriptionList[index],
                        style: const TextStyle(
                          color: Color(
                            AppColors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(
                  height: 50,
                  color: Color(AppColors.dividerGrey),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.settings,
                    color: Color(AppColors.grey),
                  ),
                  title: const Text(
                    AppString.settings,
                    style: TextStyle(
                      color: Color(
                        AppColors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
      // ),
    );
  }
}
