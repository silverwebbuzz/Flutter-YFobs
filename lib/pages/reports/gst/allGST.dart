import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class AllGST extends StatefulWidget {
  AllGST({Key key}) : super(key: key);

  @override
  _AllGSTState createState() => _AllGSTState();
}

class _AllGSTState extends State<AllGST> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Center(
        child: Container(
          child: Text('All'),
        ),
      ),
    );
  }
}
