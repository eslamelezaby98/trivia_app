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
            color: btnColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: AppColor.thirdColor,
                blurRadius: 4,
                offset: Offset(2, 8),
              ),
            ],
          ),
          child: ListTile(
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColor.textColor,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
