import 'package:flutter/material.dart';
import 'package:trigital_demo_shaff/src/constants/app_colors.dart';

class MyStreamPage extends StatelessWidget {
  const MyStreamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(AppColors.black),
      body: Center(
        child: Text(
          'My Stream Page',
          style: TextStyle(
            color: Color(AppColors.white),
          ),
        ),
      ),
    );
  }
}
