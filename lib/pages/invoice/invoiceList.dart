import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/pages/invoice/addInvoice.dart';
import 'package:yfobs_app/pages/notifications/notifications.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultBottomCenterButton.dart';
import 'package:yfobs_app/reusable/defaultDrawer.dart';
import 'package:yfobs_app/reusable/defaultIconButton.dart';
import 'package:yfobs_app/pages/invoice/allInvoice.dart';
import 'package:yfobs_app/pages/invoice/paidInvoice.dart';
import 'package:yfobs_app/pages/invoice/unpaidInvoice.dart';
import 'package:yfobs_app/pages/invoice/recurringInvoice.dart';

class InvoiceList extends StatefulWidget {
  InvoiceList({Key key}) : super(key: key);

  @override
  _InvoiceListState createState() => _InvoiceListState();
}

class _InvoiceListState extends State<InvoiceList>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
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
          title: 'Invoice',
          leading: Builder(
            builder: (context) => DefaultIconButton(
              icon: Icons.menu,
              size: kSize,
              press: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          action: [
            DefaultIconButton(
              icon: Icons.notifications_none,
              size: kSize,
              press: () => Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => Notifications(),
                ),
              ),
            ),
          ],
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
                        text: 'All'.toUpperCase(),
                      ),
                      Tab(
                        text: 'Paid'.toUpperCase(),
                      ),
                      Tab(
                        text: 'Unpaid'.toUpperCase(),
                      ),
                      Tab(
                        text: 'Recurring'.toUpperCase(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: DefaultBottomCenterButton(
          label: 'Create Invoice',
          press: () => Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => AddInvoice(),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        drawerEnableOpenDragGesture: false,
        drawer: DefaultDrawer(),
        body: TabBarView(
          controller: tabController,
          children: [
            AllInvoice(),
            PaidInvoice(),
            UnpaidInvoice(),
            RecurringInvoice(),
          ],
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}
