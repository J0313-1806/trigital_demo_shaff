import 'package:flutter/material.dart';
import 'package:trigital_demo_shaff/src/constants/app_colors.dart';

// ignore: must_be_immutable
class AnimatedChevron extends StatelessWidget {
  AnimatedChevron({super.key, required this.isExpanded});
  bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return AnimatedRotation(
      duration: const Duration(milliseconds: 150),
      turns: isExpanded ? 0.5 : 0,
      child: const Icon(
        Icons.arrow_drop_down_circle,
        color: Color(AppColors.grey),
      ),
    );
  }
}
