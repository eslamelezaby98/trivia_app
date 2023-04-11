import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';


class FortuneBarWidget extends StatelessWidget {
  const FortuneBarWidget({
    super.key,
    required this.controller,
    required this.teamList,
    required this.onFling,
    required this.title,
  });

  final StreamController<int> controller;
  final List teamList;
  final Function()? onFling;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 100,
          width: double.infinity,
          child: FortuneBar(
            selected: controller.stream,
            physics: CircularPanPhysics(
              duration: const Duration(seconds: 1),
              curve: Curves.decelerate,
            ),
            onFling: onFling,
            styleStrategy: const AlternatingStyleStrategy(),
            items: [
              for (int i = 0; i < teamList.length; i++)
                FortuneItem(
                  child: Text(
                    teamList[i],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
