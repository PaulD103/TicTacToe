import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/gamescreen/widgets/cross.dart';
import 'package:tic_tac_toe/screens/gamescreen/widgets/hole.dart';
import 'package:tic_tac_toe/screens/gamescreen/widgets/placeholder.dart';

class Board extends StatelessWidget {
  const Board();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: MediaQuery.of(context).size.width * .95,
      width: MediaQuery.of(context).size.width * .95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: GridView.count(
        crossAxisSpacing: MediaQuery.of(context).size.width * .035,
        mainAxisSpacing: MediaQuery.of(context).size.width * .035,
        crossAxisCount: 3,
        children: boardFillData,
      ),
    );
  }
}

/// Dump Data until we have a real game
List<Widget> boardFillData = const [
  BackgroundTile(
    child: Hole(
      circleColor: Color(0xfffec260),
      holeColor: Color(0xff2A0944),
    ),
  ),
  BackgroundTile(
    child: Hole(
      circleColor: Color(0xfffec260),
      holeColor: Color(0xff2A0944),
    ),
  ),
  WinningCross(),
  BackgroundTile(
    child: Hole(
      circleColor: Color(0xfffec260),
      holeColor: Color(0xff2A0944),
    ),
  ),
  WinningCross(),
  BackgroundTile(
    child: Hole(
      circleColor: Color(0xfffec260),
      holeColor: Color(0xff2A0944),
    ),
  ),
  WinningCross(),
  BackgroundTile(
    child: Hole(
      circleColor: Color(0xfffec260),
      holeColor: Color(0xff2A0944),
    ),
  ),
  BackgroundTile()
];
