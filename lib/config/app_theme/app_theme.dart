import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trivia_app/config/app_theme/app_color.dart';

class AppTheme {
  static ThemeData getMainTheme() {
    return ThemeData(
      fontFamily: "Tajawal",
      scaffoldBackgroundColor: AppColor.mainColor,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColor.mainColor,
          statusBarBrightness: Brightness.dark,
        ),
        backgroundColor: AppColor.mainColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: AppColor.secondColor,
        ),
        titleTextStyle: TextStyle(
          color: AppColor.thereColor,
        ),
      ),
      cardColor: AppColor.thereColor,
      cardTheme: const CardTheme(
        elevation: 0,
      ),
    );
  }
}
