import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final FontWeight weight;
  final TextAlign align;
  const HeaderText({
    Key key,
    this.size,
    this.text, this.color, this.weight, this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}