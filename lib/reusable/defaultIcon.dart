import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class DefaultIcon extends StatelessWidget {
  final IconData icon;
  final Function tap;
  const DefaultIcon({
    Key key, this.icon, this.tap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: tap,
      child: Padding(
        padding: EdgeInsets.only(left: kFontSize),
        child: Icon(
          icon,
          size: kIconSize,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}