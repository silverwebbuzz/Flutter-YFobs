import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class DefaultContainer extends StatelessWidget {
  final Widget child;
  final top, bottom;
  const DefaultContainer({
    Key key,
    this.child, this.top, this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: top,
        bottom: bottom,
        left: kMorePadding,
        right: kMorePadding,
      ),
      child: child,
    );
  }
}