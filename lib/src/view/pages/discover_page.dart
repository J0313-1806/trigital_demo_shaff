import 'package:flutter/material.dart';
import 'package:trigital_demo_shaff/src/constants/app_colors.dart';
import 'package:trigital_demo_shaff/src/constants/app_strings.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(AppColors.black),
      body: Center(
        child: Text(
          AppString.discoverPage,
          style: TextStyle(
            color: Color(AppColors.white),
          ),
        ),
      ),
    );
  }
}
