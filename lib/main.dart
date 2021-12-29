import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/gamescreen/game_screen.dart';

void main() {
  runApp(const TicTacToe());
}

class TicTacToe extends StatelessWidget {
  const TicTacToe();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TicTacToe',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Color(0xff2A0944),
          secondary: Color(0xff3B185F),
        ),
      ),
      home: const GameScreen(),
    );
  }
}
