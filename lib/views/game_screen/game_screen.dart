import 'package:flutter/material.dart';
import 'package:trivia_app/config/app_theme/app_color.dart';
import 'package:trivia_app/views/game_screen/game_section_widget.dart';
import 'package:trivia_app/views/random_questions/random_question_widget.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Game"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            //* game sections
            GameSectionWidget(),
      
            SizedBox(height: 10),
      
            Divider(color: AppColor.thereColor),
      
            //* random question
            RandomQuestionWidget(),
          ],
        ),
      ),
    );
  }
}
