import 'package:flutter/material.dart';

class CircleIconWidget extends StatelessWidget {
  const CircleIconWidget(
      {Key? key, required this.child, required this.edge, required this.color})
      : super(key: key);
  final Widget child;
  final double edge;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: Container(
      child: child,
      padding: EdgeInsets.all(edge),
      color: color,
    ));
  }
}
