import 'package:flutter/material.dart';

import '../../config/app_theme/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.btnColor,
  });
  final String title;
  final Function() onTap;
  final Color btnColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          decoration: BoxDecoration(
            color: AppColor.secondColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListTile(
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColor.mainColor,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
