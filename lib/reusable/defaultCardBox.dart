import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/reusable/defaultIcon.dart';
import 'package:yfobs_app/reusable/defaultPopupMenu.dart';
import 'package:yfobs_app/reusable/headerText.dart';

class DefaultCardBox extends StatelessWidget {
  final String name, status, recurring, invoiceNo, date, total;
  final Color recurringColor, statusColor;
  final Function tapPrint, tapShare, tapMore;
  const DefaultCardBox({
    Key key,
    this.name,
    this.status,
    this.recurring,
    this.invoiceNo,
    this.date,
    this.total,
    this.recurringColor,
    this.statusColor, this.tapMore, this.tapPrint, this.tapShare,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.only(bottom: kLessPadding),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: kLessPadding,
                    bottom: kLessPadding,
                  ),
                  margin: EdgeInsets.only(
                    left: kLessPadding,
                    right: kLessPadding,
                    top: kLessPadding,
                  ),
                  decoration: BoxDecoration(
                    color: kAccentColor,
                    borderRadius: BorderRadius.circular(kLessPadding),
                    // shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                        color: kMediumColor,
                        blurRadius: 2.0,
                        // spreadRadius: 2.0,
                        offset: Offset(
                          0.0, // Move to right 10  horizontally
                          1.0, // Move to bottom 5 Vertically
                        ),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: HeaderText(
                                text: name,
                                size: kFontSize,
                                color: kDarkColor,
                                weight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              right: 8,
                              left: 8,
                            ),
                            decoration: BoxDecoration(
                              color: recurringColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(kLessPadding),
                              ),
                            ),
                            child: HeaderText(
                              text: recurring,
                              align: TextAlign.end,
                              size: kFontSize,
                              color: kWhiteColor,
                              weight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              right: 8,
                              left: 8,
                            ),
                            decoration: BoxDecoration(
                              color: statusColor,
                              borderRadius: BorderRadius.only(
                                // bottomLeft: Radius.circular(kLessPadding),
                                topRight: Radius.circular(kLessPadding),
                              ),
                            ),
                            child: HeaderText(
                              text: status,
                              align: TextAlign.end,
                              size: kFontSize,
                              color: kWhiteColor,
                              weight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: HeaderText(
                              text: invoiceNo,
                              size: 12.0,
                              color: kMediumColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: kLessPadding),
                            child: HeaderText(
                              text: date,
                              align: TextAlign.end,
                              size: 12.0,
                              color: kMediumColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: HeaderText(
                              text: total,
                              size: kFontSize,
                              color: kDarkColor,
                              weight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                DefaultIcon(
                                  icon: Icons.print,
                                  tap: tapPrint,
                                ),
                                DefaultIcon(
                                  icon: CupertinoIcons
                                      .arrowshape_turn_up_right_fill,
                                  // icon: Icons.near_me_outlined,
                                  tap: tapShare
                                ),
                                // DefaultPopupMenu(),
                                DefaultIcon(
                                  icon: Icons.more_vert,
                                  tap: tapMore,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
