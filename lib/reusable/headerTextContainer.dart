import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class HeaderTextContainer extends StatelessWidget {
  final Widget child;
  final Alignment align;
  final Color color;
  const HeaderTextContainer({
    Key key,
    this.child, this.align, this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: align,
      color: color,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        top: kFontSize,
        bottom: kFontSize,
        left: kFontSize,
        right: kFontSize,
      ),
      child: child,
    );
  }
}