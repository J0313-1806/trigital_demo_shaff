import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:trigital_demo_shaff/src/constants/app_colors.dart';
import 'package:trigital_demo_shaff/src/constants/app_strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.black),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(8.0, 16, 0.0, 10.0),
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 28),
                children: [
                  TextSpan(
                    text: AppString.homeMain1,
                    style: TextStyle(
                      color: Color(AppColors.white),
                    ),
                  ),
                  TextSpan(
                    text: AppString.homeMain2,
                    style: TextStyle(
                      color: Color(AppColors.yellow),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Column(
            children: <Widget>[
              Container(
                height: 200,
                margin: const EdgeInsets.only(right: 8.0),
                width: MediaQuery.of(context).size.width - 20,
                decoration: BoxDecoration(
                  color: const Color(AppColors.yellow),
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: DottedBorder(
                  padding: const EdgeInsets.all(5.0),
                  borderType: BorderType.Circle,
                  color: const Color(AppColors.purpleShade),
                  child: const CircleAvatar(
                    backgroundColor: Color(AppColors.purpleShade),
                  ),
                ),
                title: const Text(
                  'Highlight - Raptor Fortnite',
                  style: TextStyle(
                    color: Color(AppColors.white),
                  ),
                ),
                subtitle: const Text(
                  'Fortnite meat',
                  style: TextStyle(
                    color: Color(AppColors.grey),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Color(AppColors.grey),
                  ),
                ),
              ),
              ListTile(
                minVerticalPadding: 0,
                leading: DottedBorder(
                  color: Colors.transparent,
                  padding: const EdgeInsets.all(5.0),
                  child: const CircleAvatar(
                    backgroundColor: Colors.transparent,
                  ),
                ),
                title: Row(
                  children: [
                    const Text(
                      '12 m ${AppString.views}',
                      style:
                          TextStyle(color: Color(AppColors.grey), fontSize: 14),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      padding: const EdgeInsets.all(3.0),
                      decoration: const BoxDecoration(
                        color: Color(AppColors.yellow),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const Text(
                      '2 ${AppString.daysAgo}',
                      style:
                          TextStyle(color: Color(AppColors.grey), fontSize: 14),
                    ),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppString.homeSubMain,
                  style: TextStyle(
                    color: Color(AppColors.white),
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    3,
                    (index) => Container(
                      margin: const EdgeInsets.only(right: 8.0),
                      width: MediaQuery.of(context).size.width - 70,
                      decoration: BoxDecoration(
                        color: const Color(AppColors.darkGrey),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: DottedBorder(
                              borderType: BorderType.Circle,
                              color: const Color(AppColors.grey),
                              padding: const EdgeInsets.all(5.0),
                              child: const CircleAvatar(
                                backgroundColor: Color(AppColors.black),
                              ),
                            ),
                            title: Row(
                              children: const <Widget>[
                                Text(
                                  'Khom ',
                                  style: TextStyle(
                                    color: Color(AppColors.white),
                                    fontSize: 14,
                                  ),
                                ),
                                Icon(
                                  Icons.more_vert,
                                  color: Color(AppColors.grey),
                                ),
                              ],
                            ),
                            subtitle: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: '2m ',
                                    style: TextStyle(
                                      color: Color(AppColors.white),
                                      fontSize: 14,
                                    ),
                                  ),
                                  TextSpan(
                                    text: AppString.followers,
                                    style: TextStyle(
                                      color: Color(AppColors.grey),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            trailing: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(70, 25),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                padding: EdgeInsets.zero,
                              ),
                              child: const Text(
                                AppString.streamerBtn,
                                style: TextStyle(
                                  color: Color(AppColors.white),
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              height: 100,
                              width: MediaQuery.of(context).size.width - 70,
                              child: ListView(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: List.generate(
                                  3,
                                  (index) => Container(
                                    margin: const EdgeInsets.only(right: 8.0),
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: const Color(AppColors.yellow),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
