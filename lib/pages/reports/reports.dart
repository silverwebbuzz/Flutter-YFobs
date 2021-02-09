import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/pages/reports/expenseReport.dart';
import 'package:yfobs_app/pages/reports/gst/gstList.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultDrawer.dart';
import 'package:yfobs_app/reusable/defaultIconButton.dart';
import 'package:yfobs_app/reusable/headerText.dart';
import 'package:yfobs_app/reusable/headerTextContainer.dart';

class Reports extends StatefulWidget {
  Reports({Key key}) : super(key: key);

  @override
  _ReportsState createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: DefaultAppBar(
          height: kToolbarHeight,
          title: 'Reports',
          leading: Builder(
            builder: (context) => DefaultIconButton(
              icon: Icons.menu,
              size: kSize,
              press: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        drawerEnableOpenDragGesture: false,
        drawer: DefaultDrawer(),
        body: Column(
          children: [
            HeaderTextContainer(
              align: Alignment.center,
              color: kAccentColor,
              child: HeaderText(
                text: 'GST Reports'.toUpperCase(),
                size: kFontSize,
                color: kPrimaryColor,
                weight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.separated(
                physics: ClampingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: reports.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: HeaderTextContainer(
                      align: Alignment.centerLeft,
                      color: kWhiteColor,
                      child: HeaderText(
                        text: reports[index],
                        size: kFontSize,
                        color: kDarkColor,
                      ),
                    ),
                    onTap: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) {
                          switch (reports[index]) {
                            case 'GST 1':
                              return GSTList();
                              break;
                            case 'Expense':
                              return ExpenseReport();
                              break;
                            default:
                              return GSTList();
                          }
                        },
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 0.0,
                    color: kMediumColor,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
