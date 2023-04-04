import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_app/config/app_theme/app_color.dart';
import 'package:trivia_app/controller/question_controller.dart';
import 'package:trivia_app/data/arabic_questions.dart';
import 'package:trivia_app/data/english_questions.dart';

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
                    ontap: () {},
                    title: "English",
                    controller: questionController,
                    isArabic: false,
                  ),
                ),
                Expanded(
                  child: LanguageWidget(
                    ontap: () {},
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
                      color: AppColor.textColor,
                    ),
                  ),
                  label: const Text(
                    "Change a question",
                    style: TextStyle(
                      color: AppColor.textColor,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    questionController.changeQuestion();
                  },
                  icon: const Icon(
                    Icons.restart_alt_outlined,
                    size: 30,
                    color: AppColor.textColor,
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
                      color: AppColor.textColor,
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

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({
    Key? key,
    required this.ontap,
    required this.title,
    required this.controller,
    required this.isArabic,
  }) : super(key: key);
  final String title;
  final Function() ontap;
  final QuestionController controller;
  final bool isArabic;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.changeLanague();
      },
      child: Card(
        color: controller.isArabic == isArabic
            ? Colors.black38
            : AppColor.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        semanticContainer: false,
        borderOnForeground: false,
        clipBehavior: Clip.none,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColor.textColor,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
