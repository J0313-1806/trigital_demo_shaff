import 'package:flutter/material.dart';
import 'package:trigital_demo_shaff/src/constants/app_colors.dart';
import 'package:trigital_demo_shaff/src/constants/app_strings.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(AppColors.black),
      body: Center(
        child: Text(
          AppString.activityPage,
          style: TextStyle(
            color: Color(AppColors.white),
          ),
        ),
      ),
    );
  }
}
