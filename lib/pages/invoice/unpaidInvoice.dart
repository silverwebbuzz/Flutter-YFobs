import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/reusable/defaultCardBox.dart';
import 'package:yfobs_app/reusable/defaultSearchBox.dart';

class UnpaidInvoice extends StatefulWidget {
  UnpaidInvoice({Key key}) : super(key: key);

  @override
  _UnpaidInvoiceState createState() => _UnpaidInvoiceState();
}

class _UnpaidInvoiceState extends State<UnpaidInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          DefaultSearchBox(
            // filter: (){},
          ),
          DefaultCardBox(
            name: 'Customer Name',
            recurring: 'Completed',
            recurringColor: kMediumColor,
            status: 'Unpaid',
            statusColor: kUnpaidColor,
            invoiceNo: 'Invoice #2020-27',
            date: '2020-11-20',
            total: 'Total : ₹7878.00',
          ),
        ],
      ),
    );
  }
}
