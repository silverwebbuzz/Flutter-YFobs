import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class DefaultIconButton extends StatelessWidget {
  final IconData icon;
  final double size;
  final Function press;
  final Alignment align;
  const DefaultIconButton({
    Key key, this.icon, this.size, this.press, this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: kPrimaryColor,
        size: size,
      ),
      onPressed: press,
    );
  }
}