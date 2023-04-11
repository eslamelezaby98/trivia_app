import 'package:flutter/material.dart';

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

  @override
  void dispose() {
    super.dispose();
    teamName.dispose();
  }
}
