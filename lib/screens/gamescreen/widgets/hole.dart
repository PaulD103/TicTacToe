import 'package:flutter/material.dart';

class Hole extends StatelessWidget {
  const Hole({required this.circleColor, required this.holeColor});

  final Color circleColor;
  final Color holeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(color: circleColor, shape: BoxShape.circle),
      child: Center(
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(color: holeColor, shape: BoxShape.circle),
        ),
      ),
    );
  }
}

class WinningHole extends StatelessWidget {
  const WinningHole();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      height: 70,
      width: 70,
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: const Hole(circleColor: Colors.white, holeColor: Colors.green),
    );
  }
}
