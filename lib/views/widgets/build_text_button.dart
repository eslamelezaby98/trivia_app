import 'package:flutter/material.dart';

import '../../config/app_theme/app_color.dart';

class BuildTextButton extends StatelessWidget {
  const BuildTextButton({
    super.key,
    required this.onTap,
    required this.btnColor,
    required this.text,
  });
  final Function() onTap;
  final Color btnColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: const TextStyle(
            color: AppColor.mainColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
