import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultCard.dart';
import 'package:yfobs_app/reusable/defaultDrawer.dart';
import 'package:yfobs_app/reusable/defaultIconButton.dart';

class GSTCalculate extends StatefulWidget {
  GSTCalculate({Key key}) : super(key: key);

  @override
  _GSTCalculateState createState() => _GSTCalculateState();
}

class _GSTCalculateState extends State<GSTCalculate> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
          child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: DefaultAppBar(
          height: kToolbarHeight,
          title: 'GST Calculate',
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
            DefaultCard(
              headerText1: 'Exclusive Tax',
              headerText2: '',
              text1: 'Original Amount :',
              text2: '67,000.00',
            ),
            DefaultCard(
              headerText1: 'Inclusive Tax',
              headerText2: '',
              text1: 'Original Amount :',
              text2: '67,000.00',
            ),
          ],
        ),
      ),
    );
  }
}
