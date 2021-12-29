import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/gamescreen/widgets/cross.dart';
import 'package:tic_tac_toe/screens/gamescreen/widgets/hole.dart';

class GameScreen extends StatelessWidget {
  const GameScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Cross(Color(0xffa12568)),
                CrossWinned(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Hole(
                  circleColor: const Color(0xfffec260),
                  holeColor: Theme.of(context).scaffoldBackgroundColor,
                ),
                const WinningHole()
              ],
            )
          ],
        ),
      ),
    );
  }
}
