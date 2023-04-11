import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trivia_app/views/game_screen/game_section_widget.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({
    super.key,
    required this.teamList,
  });
  final List teamList;

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  StreamController<int> answerController = StreamController<int>();
  StreamController<int> questionController = StreamController<int>();

  @override
  void dispose() {
    answerController.close();
    questionController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Game"),
      ),
      body: Column(
        children: [
          //* game sections
          GameSectionWidget(
            answerController: answerController,
            questionController: questionController,
          ),

          const SizedBox(height: 10),

          // get a random question
        ],
      ),
    );
  }
}
