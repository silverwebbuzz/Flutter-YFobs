import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/pages/expenses/addExpenses.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultBottomCenterButton.dart';
import 'package:yfobs_app/reusable/defaultDrawer.dart';
import 'package:yfobs_app/reusable/defaultIconButton.dart';
import 'package:yfobs_app/reusable/defaultSearchBox.dart';

class Expenses extends StatefulWidget {
  Expenses({Key key}) : super(key: key);

  @override
  _ExpensesState createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: DefaultAppBar(
          height: kToolbarHeight,
          title: 'Expenses',
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
        floatingActionButton: DefaultBottomCenterButton(
          label: 'Add Expenses',
          press: () => Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => AddExpenses(),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        drawerEnableOpenDragGesture: false,
        drawer: DefaultDrawer(),
        body: Column(
          children: [
            DefaultSearchBox(),
          ],
        ),
      ),
    );
  }
}
