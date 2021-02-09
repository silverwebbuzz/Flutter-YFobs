import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class DefaultSearchBox extends StatelessWidget {
  final Function filter;
  const DefaultSearchBox({
    Key key, this.filter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: kLessPadding,
        right: kLessPadding,
        top: kLessPadding,
      ),
      decoration: BoxDecoration(
        color: kAccentColor,
        borderRadius: BorderRadius.circular(kLessPadding),
        boxShadow: [
          BoxShadow(
            color: kMediumColor,
            blurRadius: 2.0,
            // spreadRadius: 1.0,
            offset: Offset(
              0.0,
              1.0,
            ),
          ),
        ],
      ),
      child: TextFormField(
        onChanged: filter,
        cursorColor: kPrimaryColor,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.only(
            top: kDefaultPadding,
            bottom: kDefaultPadding,
            left: kMorePadding,
            right: kMorePadding,
          ),
          hintText: 'Search...',
          hintStyle: kHintTextStyle,
          filled: true,
          fillColor: kAccentColor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kLessPadding),
            borderSide: BorderSide(
              color: kAccentColor,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kLessPadding),
            borderSide: BorderSide(color: kAccentColor),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kLessPadding),
            borderSide: BorderSide(
              color: kAccentColor,
              width: 10.0,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kAccentColor,
            ),
            borderRadius: BorderRadius.circular(kLessPadding),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kLessPadding),
            borderSide: BorderSide(
              color: kAccentColor,
            ),
          ),
        ),
      ),
    );
  }
}
