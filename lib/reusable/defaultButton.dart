import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class DefaultButton extends StatelessWidget {
  final Function press;
  final String btnText;
  const DefaultButton({
    Key key, this.press, this.btnText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight,
      width: MediaQuery.of(context).size.width,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(kShape),
        ),
        color: kPrimaryColor,
        textColor: kWhiteColor,
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