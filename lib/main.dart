import 'package:flutter/material.dart';
import 'package:trivia_app/config/app_routes/app_routes.dart';
import 'package:trivia_app/config/app_routes/generate_routes.dart';
import 'package:trivia_app/config/app_theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.startScreen,
      onGenerateRoute: GenerateRoutes.generate,
      theme: AppTheme.getMainTheme(),
    );
  }
}
