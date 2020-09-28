import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({
    Key key,
    this.size = double.infinity,
    this.color,
  }) : super(key: key);

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: ColoredBox(
        color: color,
        child: SizedBox(
          width: size,
          height: size,
        ),
      ),
    );
  }
}
