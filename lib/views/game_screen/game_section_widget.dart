import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../config/app_theme/app_color.dart';
import '../../controller/team_controller.dart';
import '../widgets/build_submit_button.dart';
import 'fortune_bar_widget.dart';

class GameSectionWidget extends StatelessWidget {
  const GameSectionWidget({
    super.key,
    required this.answerController,
    required this.questionController,
  });
  final StreamController<int> answerController;
  final StreamController<int> questionController;

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
