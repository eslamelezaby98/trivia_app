import 'package:flutter/material.dart';
import 'package:trivia_app/views/game_screen/game_section_widget.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Game"),
      ),
      body: Column(
        children: const [
          //* game sections
          GameSectionWidget(),

          SizedBox(height: 10),

          // get a random question
        ],
      ),
    );
  }
}
