import 'package:flutter/material.dart';
import 'package:trivia_app/views/random_questions/random_question_widget.dart';

class RandomQuestionsScreen extends StatelessWidget {
  const RandomQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Questions"),
      ),
      body: const RandomQuestionWidget(),
    );
  }
}
