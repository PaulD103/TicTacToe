import 'package:flutter/material.dart';
import 'package:tic_tac_toe/extensions/rad.dart';

class Cross extends StatelessWidget {
  const Cross(this.crossColor);

  final Color crossColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 70,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Transform.rotate(angle: 45.toRad(), child: redLine()),
          Transform.rotate(angle: -45.toRad(), child: redLine()),
        ],
      ),
    );
  }

  Widget redLine() {
    return Container(
      decoration: BoxDecoration(
        color: crossColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      height: 80,
      width: 12,
    );
  }
}

class WinningCross extends StatelessWidget {
  const WinningCross();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: const Cross(Colors.white),
    );
  }
}
