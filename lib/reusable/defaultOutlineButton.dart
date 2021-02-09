import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class DefaultOutlineButton extends StatelessWidget {
  final Function press;
  final String btnText;
  const DefaultOutlineButton({
    Key key,
    this.press,
    this.btnText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight,
      width: MediaQuery.of(context).size.width,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(kShape),
          side: BorderSide(color: kPrimaryColor)
        ),
        color: kWhiteColor,
        textColor: kPrimaryColor,
        onPressed: press,
        child: Text(
          btnText.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
