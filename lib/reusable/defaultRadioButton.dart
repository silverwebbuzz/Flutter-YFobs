import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/reusable/headerText.dart';
import 'package:yfobs_app/reusable/headerTextContainer.dart';

class DefaultRadioButton extends StatelessWidget {
  final Function change;
  final value;
  final String headText, radio1, radio2;
  const DefaultRadioButton({
    Key key,
    this.change,
    this.value,
    this.headText,
    this.radio1,
    this.radio2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderTextContainer(
          child: HeaderText(
            text: headText,
            weight: FontWeight.bold,
            size: kDefaultPadding,
          ),
        ),
        Row(
          children: [
            Container(
              width: 90,
              child: ListTile(
                dense: true,
                contentPadding: EdgeInsets.all(kRadius),
                leading: Radio(
                  activeColor: kPrimaryColor,
                  value: value,
                  groupValue: value,
                  onChanged: change,
                ),
                title: Text(
                  radio1.toUpperCase(),
                  style: TextStyle(color: kDarkColor),
                ),
              ),
            ),
            Container(
              width: 90,
              child: ListTile(
                dense: true,
                contentPadding: EdgeInsets.all(kRadius),
                leading: Radio(
                  activeColor: kPrimaryColor,
                  value: value,
                  groupValue: value,
                  onChanged: change,
                ),
                title: Text(
                  radio2.toUpperCase(),
                  style: TextStyle(color: kDarkColor),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
