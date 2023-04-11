import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({
    super.key,
    required this.teamList,
  });
  final List teamList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Game"),
      ),
    );
  }
}
