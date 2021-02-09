import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class PaidGST extends StatefulWidget {
  PaidGST({Key key}) : super(key: key);

  @override
  _PaidGSTState createState() => _PaidGSTState();
}

class _PaidGSTState extends State<PaidGST> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Center(
          child: Column(children: <Widget>[
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
                  child: Container(
            width: MediaQuery.of(context).size.width,
            child: Table(
              defaultColumnWidth: FixedColumnWidth(120.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 0),
              children: [
                TableRow(children: [
                  Column(children: [
                    Text('Website', style: TextStyle(fontSize: 20.0))
                  ]),
                  Column(children: [
                    Text('Tutorial', style: TextStyle(fontSize: 20.0))
                  ]),
                  Column(children: [
                    Text('Review', style: TextStyle(fontSize: 20.0))
                  ]),
                  Column(children: [
                    Text('Review', style: TextStyle(fontSize: 20.0))
                  ]),
                  Column(children: [
                    Text('Review', style: TextStyle(fontSize: 20.0))
                  ]),
                  Column(children: [
                    Text('Review', style: TextStyle(fontSize: 20.0))
                  ]),
                  Column(children: [
                    Text('Review', style: TextStyle(fontSize: 20.0))
                  ]),
                ]),
                TableRow(children: [
                  Column(children: [Text('Javatpoint')]),
                  Column(children: [Text('Flutter')]),
                  Column(children: [Text('5*')]),
                  Column(children: [Text('Flutter')]),
                  Column(children: [Text('5*')]),
                  Column(children: [Text('Flutter')]),
                  Column(children: [Text('5*')]),
                ]),
                // TableRow(children: [
                //   Column(children: [Text('Javatpoint')]),
                //   Column(children: [Text('MySQL')]),
                //   Column(children: [Text('5*')]),
                //   Column(children: [Text('Flutter')]),
                //   Column(children: [Text('5*')]),
                // ]),
                // TableRow(children: [
                //   Column(children: [Text('Javatpoint')]),
                //   Column(children: [Text('ReactJS')]),
                //   Column(children: [Text('5*')]),
                //   Column(children: [Text('Flutter')]),
                //   Column(children: [Text('5*')]),
                // ]),
                // TableRow(children: [
                //   Column(children: [
                //     Text('Website', style: TextStyle(fontSize: 20.0))
                //   ]),
                //   Column(children: [
                //     Text('Tutorial', style: TextStyle(fontSize: 20.0))
                //   ]),
                //   Column(children: [
                //     Text('Review', style: TextStyle(fontSize: 20.0))
                //   ]),
                //   Column(children: [
                //     Text('Tutorial', style: TextStyle(fontSize: 20.0))
                //   ]),
                //   Column(children: [
                //     Text('Review', style: TextStyle(fontSize: 20.0))
                //   ]),
                // ]),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}
