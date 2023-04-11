import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../config/app_theme/app_color.dart';
import '../../controller/team_controller.dart';
import '../widgets/build_submit_button.dart';
import 'fortune_bar_widget.dart';

class GameSectionWidget extends StatefulWidget {
  const GameSectionWidget({super.key});

  @override
  State<GameSectionWidget> createState() => _GameSectionWidgetState();
}

class _GameSectionWidgetState extends State<GameSectionWidget> {
  StreamController<int> answerController = StreamController<int>();
  StreamController<int> questionController = StreamController<int>();

  @override
  void dispose() {
    super.dispose();
    answerController.close();
    questionController.close();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TeamController>(
      builder: (context, value2, child) {
        return Column(
          children: [
            FortuneBarWidget(
              controller: questionController,
              teamList: value2.teamList,
              onFling: () {
                Random random = Random();
                questionController.add(random.nextInt(value2.teamList.length));
              },
              title: "Questions",
            ),
            const SizedBox(height: 10),
            FortuneBarWidget(
              controller: answerController,
              teamList: value2.teamList,
              onFling: () {
                Random random = Random();
                answerController.add(random.nextInt(value2.teamList.length));
              },
              title: "Answer",
            ),
            BuildSubmitButton(
              btnColor: AppColor.secondColor,
              text: "Next",
              onTap: () {
                value2.getNextMembers(
                  answerController: answerController,
                  questionController: questionController,
                );
              },
            ),
          ],
        );
      },
    );
  }
}
