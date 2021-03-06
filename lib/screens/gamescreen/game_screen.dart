import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/gamescreen/widgets/board.dart';

class GameScreen extends StatelessWidget {
  const GameScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Center(
          child: Column(
            children: const <Widget>[
              Spacer(),
              Board(),
            ],
          ),
        ),
      ),
    );
  }
}
