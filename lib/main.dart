import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_app/config/app_routes/app_routes.dart';
import 'package:trivia_app/config/app_routes/generate_routes.dart';
import 'package:trivia_app/config/app_theme/app_theme.dart';
import 'package:trivia_app/controller/game_controller.dart';
import 'package:trivia_app/controller/question_controller.dart';
import 'package:trivia_app/controller/team_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => QuestionController(),
        ),
        ChangeNotifierProvider(
          create: (context) => TeamController(),
        ),
        ChangeNotifierProvider(
          create: (context) => GameController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.startScreen,
        onGenerateRoute: GenerateRoutes.generate,
        theme: AppTheme.getMainTheme(),
      ),
    );
  }
}
