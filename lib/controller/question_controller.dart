import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trivia_app/data/english_questions.dart';

import '../data/arabic_questions.dart';

class QuestionController extends ChangeNotifier {
  int randomNumber = 0;

  bool isArabic = true;

  changeQuestion() {
    Random random = Random();
    if (isArabic == true) {
      randomNumber = random.nextInt(arabicQuestions.length);
    } else {
      randomNumber = random.nextInt(englishList.length);
    }
    notifyListeners();
  }

  changeLanague() {
    isArabic = !isArabic;
    notifyListeners();
  }
}
