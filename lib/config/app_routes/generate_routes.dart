import 'package:flutter/material.dart';
import 'package:trivia_app/config/app_routes/app_routes.dart';
import 'package:trivia_app/views/game_screen/game_screen.dart';
import 'package:trivia_app/views/random_questions/random_questions_screen.dart';
import 'package:trivia_app/views/start_screen/start_screen.dart';
import 'package:trivia_app/views/team_screen/team_screen.dart';

class GenerateRoutes {
  static Route<Object>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.startScreen:
        return MaterialPageRoute(
          builder: (context) => const StartScreen(),
        );
      case AppRoutes.randomQuestionScreen:
        return MaterialPageRoute(
          builder: (context) => const RandomQuestionsScreen(),
        );
      case AppRoutes.teamScreen:
        return MaterialPageRoute(
          builder: (context) => const TeamScreen(),
        );
      case AppRoutes.gameScreen:
        List teamList = settings.arguments as List;
        return MaterialPageRoute(
          builder: (context) => GameScreen(teamList: teamList),
        );
    }
    return null;
  }
}
