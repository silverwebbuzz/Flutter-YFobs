import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class MultipleText extends StatelessWidget {
  final String blkText, clrText;
  final FontWeight weight;
  const MultipleText({
    Key key, this.blkText, this.clrText, this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: blkText, style: TextStyle(fontWeight: weight)),
          TextSpan(
            text: clrText,
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}