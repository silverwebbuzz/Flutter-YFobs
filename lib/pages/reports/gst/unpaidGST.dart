import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class UnpaidGST extends StatefulWidget {
  UnpaidGST({Key key}) : super(key: key);

  @override
  _UnpaidGSTState createState() => _UnpaidGSTState();
}

class _UnpaidGSTState extends State<UnpaidGST> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Center(
        child: Container(
          child: Text('Unpaid'),
        ),
      ),
    );
  }
}
