import 'package:flutter/material.dart';
import 'package:trivia_app/config/app_theme/app_color.dart';

class AppTheme {
  static ThemeData getMainTheme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColor.mainColor,
    
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.mainColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: AppColor.secondColor,
        )
      ),
      cardColor: AppColor.secondColor,
      cardTheme: const CardTheme(
        elevation: 0,
      ),
    );
  }
}
