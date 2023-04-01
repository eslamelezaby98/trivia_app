import 'package:flutter/material.dart';
import 'package:trivia_app/config/app_routes/app_routes.dart';
import 'package:trivia_app/views/start_screen/start_screen.dart';

class GenerateRoutes {
  static Route<Object>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.startScreen:
        return MaterialPageRoute(
          builder: (context) => const StartScreen(),
        );
    }
    return null;
  }
}