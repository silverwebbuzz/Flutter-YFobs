import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/reusable/defaultAppBar.dart';
import 'package:yfobs_app/reusable/defaultIconButton.dart';

class ExpenseReport extends StatefulWidget {
  ExpenseReport({Key key}) : super(key: key);

  @override
  _ExpenseReportState createState() => _ExpenseReportState();
}

class _ExpenseReportState extends State<ExpenseReport> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: DefaultAppBar(
          height: kToolbarHeight,
          title: 'Expense Report',
          leading: Builder(
            builder: (context) => DefaultIconButton(
              icon: Icons.arrow_back_ios,
              size: kSize,
              press: () => Navigator.of(context).pop(),
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: ClampingScrollPhysics(),
                child: DataTable(
                  columnSpacing: 22.0,
                  // dividerThickness: 0.0,
                  dataRowHeight: 36.0,
                  headingRowHeight: 36.0,
                  showBottomBorder: true,
                  headingRowColor:
                      MaterialStateColor.resolveWith((states) => kPrimaryColor),
                  dataRowColor:
                      MaterialStateColor.resolveWith((states) => kAccentColor),
                  // columns: [
                  //   DataColumn(label: Text('#')),
                  //   DataColumn(label: Text('Vendors')),
                  //   DataColumn(label: Text('Tax')),
                  //   DataColumn(label: Text('Amount')),
                  //   DataColumn(label: Text('Net Amount')),
                  //   DataColumn(label: Text('Date')),
                  // ],
                  columns: expReportsHeader
                      .map(
                        (header) => DataColumn(
                          label: Text(
                            header,
                            style: TextStyle(color: kWhiteColor),
                          ),
                        ),
                      )
                      .toList(),
                  rows: [
                    DataRow(
                      cells: expReportsEntry
                          .map(
                            (entry) => DataCell(
                              Text(entry),
                            ),
                          )
                          .toList(),
                    ),
                    DataRow(
                      cells: expReportsEntry
                          .map(
                            (entry) => DataCell(
                              Text(entry),
                            ),
                          )
                          .toList(),
                    ),
                    // DataRow(
                    //   cells: expReportsTotal
                    //       .map(
                    //         (entry) => DataCell(
                    //           Text(entry),
                    //         ),
                    //       )
                    //       .toList(),
                    // ),
                    // DataRow(cells: [
                    //   DataCell(Text('42')),
                    //   DataCell(Text('Tony')),
                    //   DataCell(Text('8')),
                    //   DataCell(Text('42')),
                    //   DataCell(Text('Tony')),
                    //   DataCell(Text('8')),
                    // ]),
                  ],
                  // rows: expReportsEntry
                  //     .map(
                  //       (entry) => DataRow(
                  //         cells: [
                  //           DataCell(
                  //             Text(entry),
                  //           ),
                  //         ],
                  //       ),
                  //     )
                  //     .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
