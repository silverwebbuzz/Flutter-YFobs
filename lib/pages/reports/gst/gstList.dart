import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/pages/reports/gst/allGST.dart';
import 'package:yfobs_app/pages/reports/gst/paidGST.dart';
import 'package:yfobs_app/pages/reports/gst/unpaidGST.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultIconButton.dart';

class GSTList extends StatefulWidget {
  GSTList({Key key}) : super(key: key);

  @override
  _GSTListState createState() => _GSTListState();
}

class _GSTListState extends State<GSTList> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: DefaultAppBar(
          height: kToolbarHeight * 2,
          title: 'GST1 Reports  ',
          leading: Builder(
            builder: (context) => DefaultIconButton(
              icon: Icons.arrow_back_ios,
              size: kSize,
              press: () => Navigator.of(context).pop(),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Column(
              children: [
                Container(
                  color: kWhiteColor,
                  height: kToolbarHeight,
                  child: new TabBar(
                    controller: tabController,
                    indicatorColor: kPrimaryColor,
                    unselectedLabelColor: kMediumColor,
                    labelColor: kPrimaryColor,
                    labelStyle: TextStyle(
                      fontSize: kFontSize,
                      fontWeight: FontWeight.bold,
                    ),
                    indicatorWeight: 2.0,
                    labelPadding: EdgeInsets.all(kRadius),
                    tabs: [
                      Tab(
                        text: 'Paid'.toUpperCase(),
                      ),
                      Tab(
                        text: 'Unpaid'.toUpperCase(),
                      ),
                      Tab(
                        text: 'All'.toUpperCase(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        drawerEnableOpenDragGesture: false,
        body: TabBarView(
          controller: tabController,
          children: [
            PaidGST(),
            UnpaidGST(),
            AllGST(),
          ],
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}
