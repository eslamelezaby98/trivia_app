import 'package:flutter/material.dart';

import '../../config/app_theme/app_color.dart';
import '../../controller/question_controller.dart';


class LanguageWidget extends StatelessWidget {
  const LanguageWidget({
    Key? key,
    required this.title,
    required this.controller,
    required this.isArabic,
  }) : super(key: key);
  final String title;
  final QuestionController controller;
  final bool isArabic;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.changeLanague();
      },
      child: Card(
        color: controller.isArabic == isArabic
            ? AppColor.secondColor
            : AppColor.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        semanticContainer: false,
        borderOnForeground: false,
        clipBehavior: Clip.none,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style:  TextStyle(
              fontWeight: FontWeight.bold,
              color: controller.isArabic != isArabic
            ? AppColor.secondColor
            : AppColor.mainColor,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
