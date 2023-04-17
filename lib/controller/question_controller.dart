import 'dart:math';
import 'package:flutter/material.dart';

import '../data/arabic_questions.dart';

class QuestionController extends ChangeNotifier {
  int randomNumber = 0;

  bool isArabic = true;

  changeQuestion() {
    Random random = Random();
    randomNumber = random.nextInt(arabicQuestions.length);

    // if (isArabic == true) {
    //   randomNumber = random.nextInt(arabicQuestions.length);
    // } else {
    //   randomNumber = random.nextInt(englishList.length);
    // }
    notifyListeners();
  }

  changeLanague() {
    isArabic = !isArabic;
    notifyListeners();
  }
}
