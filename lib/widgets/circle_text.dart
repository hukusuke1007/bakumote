import 'package:flutter/material.dart';

class CircleText extends StatelessWidget {
  const CircleText({
    Key key,
    this.size = double.infinity,
    this.color,
    this.child,
  }) : super(key: key);

  final double size;
  final Color color;
  final Text child;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: ColoredBox(
        color: color,
        child: SizedBox(
          width: size,
          height: size,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
