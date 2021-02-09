import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class DefaultBottomCenterButton extends StatelessWidget {
  final String label;
  final Function press;
  const DefaultBottomCenterButton({
    Key key, this.label, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      padding: EdgeInsets.only(
        top: kLessPadding,
        bottom: kLessPadding,
        left: kDefaultPadding,
        right: kDefaultPadding,
      ),
      color: kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(kShape),
      ),
      onPressed: press,
      icon: Icon(
        Icons.add_circle_rounded,
        color: kWhiteColor,
      ),
      label: Text(
        label,
        style: TextStyle(
          color: kWhiteColor,
          fontSize: kFontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
