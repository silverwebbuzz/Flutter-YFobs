import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';
import 'package:yfobs_app/reusable/defaultCardBox.dart';
import 'package:yfobs_app/reusable/defaultSearchBox.dart';

class RecurringInvoice extends StatefulWidget {
  RecurringInvoice({Key key}) : super(key: key);

  @override
  _RecurringInvoiceState createState() => _RecurringInvoiceState();
}

class _RecurringInvoiceState extends State<RecurringInvoice> {
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
            recurring: 'Active',
            recurringColor: kPrimaryColor,
            status: 'Recurring',
            statusColor: kRecurringColor,
            invoiceNo: 'Invoice #2020-27',
            date: '2020-11-20',
            total: 'Total : ₹7878.00',
          ),
        ],
      ),
    );
  }
}