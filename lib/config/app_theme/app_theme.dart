import 'package:flutter/material.dart';
import 'package:trivia_app/config/app_theme/app_color.dart';

class AppTheme {
  static ThemeData getMainTheme() {
    return ThemeData(
      backgroundColor: AppColor.mainColor,
      scaffoldBackgroundColor: AppColor.mainColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.mainColor,
        elevation: 0,
      ),
      cardColor: AppColor.secondColor,
      cardTheme: const CardTheme(
        elevation: 0,
      ),
    );
  }
}
