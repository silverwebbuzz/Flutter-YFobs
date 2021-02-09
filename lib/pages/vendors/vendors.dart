import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/pages/vendors/addVendor.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultBottomCenterButton.dart';
import 'package:yfobs_app/reusable/defaultDrawer.dart';
import 'package:yfobs_app/reusable/defaultIconButton.dart';
import 'package:yfobs_app/reusable/defaultSearchBox.dart';

class Vendors extends StatefulWidget {
  Vendors({Key key}) : super(key: key);

  @override
  _VendorsState createState() => _VendorsState();
}

class _VendorsState extends State<Vendors> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
          child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: DefaultAppBar(
          height: kToolbarHeight,
          title: 'Vendors',
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
        label: 'Add Vendor',
        press: () => Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => AddVendor(),
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
