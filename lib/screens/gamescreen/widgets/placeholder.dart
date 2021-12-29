import 'package:flutter/material.dart';

class BackgroundTile extends StatelessWidget {
  const BackgroundTile({this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: child,
    );
  }
}
