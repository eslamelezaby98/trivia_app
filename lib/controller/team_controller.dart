import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class TeamController extends ChangeNotifier {
  TextEditingController teamName = TextEditingController();
  List teamList = [];
  AudioCache audioCache = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();

  void addToTeam({required BuildContext context}) {
    if (teamName.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Name is empty"),
        ),
      );
    }
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
    await audioPlayer.play(AssetSource("sounds/drum.mp3"));
    answerController.add(
      Fortune.randomInt(0, teamList.length),
    );
    questionController.add(
      Fortune.randomInt(0, teamList.length),
    );
    notifyListeners();
    // await audioPlayer.pause();
  }

  @override
  void dispose() {
    super.dispose();
    teamName.dispose();
  }
}
