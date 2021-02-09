import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/pages/customer/customer.dart';
import 'package:yfobs_app/pages/items/items.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultButton.dart';
import 'package:yfobs_app/reusable/defaultIconButton.dart';

class AddInvoice extends StatefulWidget {
  AddInvoice({Key key}) : super(key: key);

  @override
  _AddInvoiceState createState() => _AddInvoiceState();
}

class _AddInvoiceState extends State<AddInvoice> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: DefaultAppBar(
          height: kToolbarHeight,
          title: 'New Invoice',
          leading: Builder(
            builder: (context) => DefaultIconButton(
              icon: Icons.arrow_back_ios,
              size: kSize,
              press: () => Navigator.of(context).pop(),
            ),
          ),
        ),
        drawerEnableOpenDragGesture: false,
        body: Column(
          children: [
            DefaultButton(
              btnText: 'Add Customer',
              press: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Customer(),
                  fullscreenDialog: true,
                ),
              ),
            ),
            DefaultButton(
              btnText: 'Add Item',
              press: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Items(),
                  fullscreenDialog: true,
                ),
              ),
              // press: () => Navigator.of(context, rootNavigator: true).push(
              //   CupertinoPageRoute<bool>(
              //     fullscreenDialog: true,
              //     builder: (BuildContext context) => Items(),
              //   ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
