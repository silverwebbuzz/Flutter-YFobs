import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/reusable/headerText.dart';

class DefaultCard extends StatelessWidget {
  final String headerText1, headerText2, text1, text2;
  const DefaultCard({
    Key key,
    this.headerText1,
    this.headerText2,
    this.text1,
    this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kLessPadding,
        bottom: kBottoNavBarHeight,
        left: kLessPadding,
        right: kLessPadding,
      ),
      padding: EdgeInsets.all(kLessPadding),
      decoration: BoxDecoration(
        border: Border.all(
          color: kLightColor,
          width: 2.0,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: HeaderText(
                  text: headerText1,
                  size: kFontSize,
                  color: kPrimaryColor,
                  weight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: HeaderText(
                  text: headerText2,
                  size: kFontSize,
                  color: kPrimaryColor,
                  weight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Divider(),
          // SizedBox(
          //   height: 8.0,
          // ),
          Container(
            height: 114,
            child: ListView.separated(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Expanded(
                      child: HeaderText(
                        text: text1,
                        size: kFontSize,
                        color: kDarkColor,
                      ),
                    ),
                    Expanded(
                      child: HeaderText(
                        text: text2,
                        size: kFontSize,
                        color: kDarkColor,
                        weight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 8.0,
                  color: kWhiteColor,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
