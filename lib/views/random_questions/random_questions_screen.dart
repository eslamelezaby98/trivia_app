import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_app/config/app_theme/app_color.dart';
import 'package:trivia_app/controller/question_controller.dart';
import 'package:trivia_app/data/arabic_questions.dart';
import 'package:trivia_app/data/english_questions.dart';

import 'language_widget.dart';

class RandomQuestionsScreen extends StatelessWidget {
  const RandomQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController questionController =
        Provider.of<QuestionController>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Questions"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: LanguageWidget(
                    title: "English",
                    controller: questionController,
                    isArabic: false,
                  ),
                ),
                Expanded(
                  child: LanguageWidget(
                    title: "باللغة العربية",
                    controller: questionController,
                    isArabic: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                const SizedBox(height: 10),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    side: const BorderSide(
                      color: AppColor.secondColor,
                    ),
                  ),
                  label: const Text(
                    "Change a question",
                    style: TextStyle(
                      color: AppColor.secondColor,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    questionController.changeQuestion();
                  },
                  icon: const Icon(
                    Icons.restart_alt_outlined,
                    size: 30,
                    color: AppColor.secondColor,
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    questionController.isArabic
                        ? arabicQuestions[questionController.randomNumber]
                        : englishList[questionController.randomNumber],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppColor.secondColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      height: 2,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
