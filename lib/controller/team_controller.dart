import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class TeamController extends ChangeNotifier {
  TextEditingController teamName = TextEditingController();
  List teamList = [];

  void addToTeam() {
    teamList.add(teamName.text);
    teamName.clear();
    notifyListeners();
  }

  void deleteMemeber(int index) {
    teamList.removeAt(index);
    notifyListeners();
  }

  void deleteAllMemebers() {
    teamList.clear();
    notifyListeners();
  }

  Future getNextMembers({
    required StreamController<int> answerController,
    required StreamController<int> questionController,
  }) async {
    answerController.add(
      Fortune.randomInt(0, teamList.length),
    );
    questionController.add(
      Fortune.randomInt(0, teamList.length),
    );
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    teamName.dispose();
  }
}
